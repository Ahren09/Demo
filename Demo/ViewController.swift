//
//  ViewController.swift
//  Demo
//
//  Created by Ahren on 3/30/19.
//  Copyright © 2019 Ahren. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate,
UINavigationControllerDelegate {

    @IBOutlet weak var RecordingLabel: UILabel!
    @IBOutlet weak var RecordButton: UIButton!
    @IBOutlet weak var StopRecordButton: UIButton!
    @IBOutlet weak var imagePicker: UIButton!
    @IBOutlet weak var takePhoto: UIButton!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        StopRecordButton.isEnabled = false
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear Called")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func recordAudio(_ sender: Any) {
        RecordingLabel.text="Recording in Progress"
        RecordButton.isEnabled = false
        StopRecordButton.isEnabled = true
    }
    
    @IBAction func StopRecording(_ sender: Any) {
        print("Stop Recording!")
        RecordButton.isEnabled = true
        StopRecordButton.isEnabled = false
        RecordingLabel.text = "Tap to record"
    }
    
    @IBAction func Photo(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            var imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .photoLibrary;
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    @IBAction func takePhoto(_ sender: Any) {
        if
            UIImagePickerController.isSourceTypeAvailable(.camera)
        {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self;
            imagePicker.sourceType = .camera;
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion:nil)

        }
    }
    
}

