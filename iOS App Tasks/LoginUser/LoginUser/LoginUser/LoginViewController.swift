//
//  ViewController.swift
//  LoginUser
//
//  Created by odc on 28/03/2023.
//

import UIKit
import Firebase
import FirebaseAuth

//var Name = "Mohamed"

class LoginViewController: UIViewController {
    
//    let User = "Ali", Pass = "123"
    
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var lblMsg: UILabel!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtUsername: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "toHomePage"
        {
            let homepage = segue.destination as! HomeViewController
            homepage.Name = "Ali"
            
        }
        
    }
    
    @IBAction func btnLogin(_ sender: Any)
    {
        guard
            let email = txtUsername.text,
            let pass = txtPassword.text,
            email.count > 0,
            pass.count > 0
        else {
            lblMsg.text = "Invild Username Or Password"
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: pass) { user, error in
            
            if let error = error, user == nil {
                
                let alert = UIAlertController(title: "Login", message: error.localizedDescription , preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default))
                self.present(alert, animated: true, completion: nil)
                
            }else {
                Auth.auth().addStateDidChangeListener(){ auth, user in
                    if user != nil {
                        print("Logined Done")
                        self.reset()
                        UserDefaults.standard.set(email, forKey: "Username")
                        UserDefaults.standard.set(pass, forKey: "Password")
                    }
                }
            }
            
        }
    }
    
    
    
    func reset()
    {
        txtPassword.text = ""
        txtUsername.text = ""
        lblMsg.text = ""
    }
}

