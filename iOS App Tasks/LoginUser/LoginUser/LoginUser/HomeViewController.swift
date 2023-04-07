//
//  HomeViewController.swift
//  LoginUser
//
//  Created by odc on 28/03/2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    var Name:String?
    let User = UserDefaults.standard.object(forKey: "Username")
    
    
    @IBOutlet weak var lblWelcome: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        lblWelcome.text = Name
        
        
        
        if let _user = User {
            lblWelcome.text = "Welcome \(_user)"
        }
        
    }
    
    
    

    @IBAction func btnLogOut(_ sender: Any) {
        
        UserDefaults.standard.removeObject(forKey: "Username")
        UserDefaults.standard.removeObject(forKey: "Password")
    }
    

}
