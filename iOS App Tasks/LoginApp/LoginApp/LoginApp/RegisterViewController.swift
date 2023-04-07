//
//  RegisterViewController.swift
//  LoginApp
//
//  Created by odc on 27/03/2023.
//

import UIKit
import Firebase
import FirebaseAuth

class RegisterViewController: UIViewController {
    
    let ref = Database.database().reference(withPath: "Users")
    var arrUsers = [User]()
    
    
    @IBOutlet weak var txtFullname: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var txtUsername: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnSnigUp(_ sender: Any) {
        
        
        
        
        
        
        
        
        
//        let addUser = User(fullname: txtFullname.text!, username: txtUsername.text!, password: txtPassword.text!)
//        let addUserRef = self.ref.childByAutoId()
//        addUserRef.setValue(addUser.toAnyObject())
//        print("Created Account Successfuly")
    }
    
}
