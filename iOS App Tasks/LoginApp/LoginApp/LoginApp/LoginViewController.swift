//
//  ViewController.swift
//  LoginApp
//
//  Created by odc on 27/03/2023.
//

import UIKit



class LoginViewController: UIViewController {

    @IBOutlet weak var txtPAssword: UITextField!
    @IBOutlet weak var txtUSername: UITextField!
    
    @IBOutlet weak var lblMsg: UILabel!
    
    var Auth_User = "Ali", Auth_Pass = "123"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    

    @IBAction func btnLogin(_ sender: UIButton) {
        
        if (txtUSername.text == Auth_User) && (txtPAssword.text == Auth_Pass) {
            UserDefaults.standard.set(txtUSername.text, forKey: "Username")
            UserDefaults.standard.set(txtPAssword.text, forKey: "Password")
            Reseet()
           
        }else {
            lblMsg.text = "Invalid Username Or Password"
        }
        
    }
    
    func Reseet(){
        lblMsg.text = ""
        txtPAssword.text = ""
        txtUSername.text = ""
    }
    
}

