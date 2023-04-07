//
//  ViewController.swift
//  CameraApps
//
//  Created by odc on 04/04/2023.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imagePost: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnBrowesImage(_ sender: Any) {
        showAlert()
    }
    
    @IBOutlet weak var lblmsg: UILabel!
    
    func showAlert(){
        let alert = UIAlertController(title: "Photo", message: "Select Photo", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Take Pic by Camera", style: .default, handler: { _ in
            self.getPhoto(type: .camera)
        }))
        alert.addAction(UIAlertAction(title: "Open Photo Library", style: .destructive, handler: { _ in
            self.getPhoto(type: .photoLibrary)
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        present(alert, animated: true, completion: nil)
    }
    
    func getPhoto(type: UIImagePickerController.SourceType)
    {
        let picker = UIImagePickerController()
        picker.sourceType = type
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        dismiss(animated: true, completion: nil)
//        if let image = info[.originalImage] as? UIImage {  imagePost.image = image } else { lblmsg.text = "Pleace Select Image"  }
        guard
            let image = info[.editedImage] as? UIImage
        else{
            lblmsg.text = "Pleace Select Image"
            return
        }
        imagePost.image = image
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
}

