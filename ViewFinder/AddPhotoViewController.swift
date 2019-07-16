//
//  AddPhotoViewController.swift
//  ViewFinder
//
//  Created by Apple on 7/16/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class AddPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var Image: UIImageView!
    @IBOutlet weak var captionText: UITextField!
    
    var imagePicker = UIImagePickerController()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }
    
    @IBAction func cameraButton(_ sender: UIButton) {
        imagePicker.sourceType = .camera
        present(imagePicker , animated: true, completion: nil)
    }
    
    @IBAction func photoLibraryButton(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    
    @IBAction func saveButton(_ sender: UIButton) {
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info [UIImagePickerController.InfoKey.originalImage] as? UIImage {Image.image = selectedImage}
        
            imagePicker.dismiss(animated: true, completion: nil)
        }


}
