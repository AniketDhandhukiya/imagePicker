//
//  ViewController.swift
//  imagePicker
//
//  Created by R & W on 09/07/20.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    @IBOutlet weak var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func selectButtonAction(_ sender: UIButton) {
        showAlert()
    }
    
    func showAlert(){
        let alert = UIAlertController(title: "Select", message: "", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction.init(title: "Gallery", style: .default, handler:{i in self.openGallery()}))
        alert.addAction(UIAlertAction.init(title: "Camera", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        img.image = info[.originalImage] as! UIImage
        dismiss(animated: true, completion: nil)
    }
    
    func openGallery(){
        let gallery = UIImagePickerController()
        gallery.allowsEditing = true
        gallery.sourceType = .photoLibrary
        gallery.delegate = self
        present(gallery, animated: true, completion: nil)
    }
    
}

