//
//  AlertViewController.swift
//  AdhamApp
//
//  Created by odc on 05/04/2023.
//

import UIKit

class AlertViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func btnShowActionSheet(_ sender: Any) {
        
        let alert = UIAlertController(title: "Photes", message: "Please Select Photo", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Open Photo Library", style: .default, handler: {_ in
            print("Photo Libary")
        }))
        alert.addAction(UIAlertAction(title: "Take Photo by camera", style: .destructive, handler: { _ in
            print("camera")
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        present(alert, animated: true, completion:  nil)
        
    }
    
    
    
    @IBAction func btnShowAlert(_ sender: Any) {
        
        let alert = UIAlertController(title: "Title Alert", message: "Message Alert", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Save", style: .destructive, handler: { _ in
            let name = alert.textFields![0]
            print(name.text)
        }))
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {_ in
            print("OK")
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        
        alert.addTextField() { (txtName) in
            txtName.placeholder = "Full Name"
        }
        present(alert, animated: true, completion: nil)
        
    }
    
}
