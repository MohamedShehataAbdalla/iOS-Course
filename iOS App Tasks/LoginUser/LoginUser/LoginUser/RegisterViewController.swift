//
//  RegisterViewController.swift
//  LoginUser
//
//  Created by odc on 28/03/2023.
//

import UIKit
import Firebase
import FirebaseAuth

class RegisterViewController: UIViewController {
    
    let ref = Database.database().reference(withPath: "Users")
    @IBOutlet weak var txtFullName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtUsername: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func btnStore(_ sender: Any) {
        
        let alert = UIAlertController(title: "Register", message: "Create New Account", preferredStyle: .alert)
        let saveAlert = UIAlertAction(title: "Save", style: .default) { _ in
            let email = self.txtUsername.text
            let pass = self.txtPassword.text
            let name = self.txtFullName.text
            
            Auth.auth().createUser(withEmail: email!, password: pass!) { user, error in
                if error == nil {
                    Auth.auth().signIn(withEmail: email!, password: pass!)
                    Auth.auth().addStateDidChangeListener(){ auth, user in
                        if user != nil {
                            self.reset()
//                            self.performSegue(withIdentifier:  , sender: nil)
                            print("Created Account Successfuly")
                        }
                    }
                }
            }
            
        }
        
        let canselAlert = UIAlertAction(title: "Cansel", style: .cancel)
        alert.addAction(saveAlert)
        alert.addAction(canselAlert)
        present(alert, animated: true, completion: nil)
        
    }
    
    func reset()
    {
        txtPassword.text = ""
        txtUsername.text = ""
        txtFullName.text = ""
        
    }

}






//        let addUser = User(fullname: txtFullName.text!, username: txtUsername.text!, password: txtPassword.text!)
//
//        let addUserRef = self.ref.childByAutoId()
//
//        addUserRef.setValue(addUser.toAnyObject())






//
//
//
//
//guard
//    let email = txtUsername.text,
//    let pass = txtPassword.text,
//    email.count > 0,
//    pass.count > 0
//else
//{
//    return
//}
//
//Auth.auth().createUser(withEmail: email, password: pass) { user, error in
//    if let error = error, user == nil {
//        let alert = UIAlertController(title: "Create Account", message: error.localizedDescription, preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: "OK", style: .default))
//        self.present(alert, animated: true, completion: nil)
//    }else {
//        Auth.auth().addStateDidChangeListener() { auth, user in
//            if user != nil {
////                        self.performSegue(withIdentifier: self.loginPage, sender: nil)
//                UserDefaults.standard.set(email, forKey: "Username")
//                UserDefaults.standard.set(pass, forKey: "Password")
//                self.reset()
//            }
//        }
//    }
//}

