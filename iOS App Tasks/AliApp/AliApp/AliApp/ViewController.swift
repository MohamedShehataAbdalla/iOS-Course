//
//  ViewController.swift
//  AliApp
//
//  Created by odc on 04/04/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnShowAlert(_ sender: Any) {
        
        let alert = UIAlertController(title: "Alert Title", message: "Welcome To Egypt", preferredStyle: .alert)
        alert.addTextField { (txtName) in
            txtName.placeholder = "Enter Your Name"
        }
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { _ in
            let name = alert.textFields![0]
            self.lblTitle.text = name.text
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        alert.addAction(UIAlertAction(title: "Save", style: .destructive, handler:  { _ in
            print("Save")
        }))
        present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func btnShowSheetAction(_ sender: Any) {
        let alert = UIAlertController(title: "Sheet Action", message: nil, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Take Camera", style: .destructive, handler: { _ in
            print("Camera")
        }))
        alert.addAction(UIAlertAction(title: "Select from Photo Library", style: .default, handler: {_ in
            print("Photo Library")
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        present(alert, animated: true, completion: nil)
    }
    
}

