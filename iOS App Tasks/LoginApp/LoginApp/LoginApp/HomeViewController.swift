//
//  HomeViewController.swift
//  LoginApp
//
//  Created by odc on 27/03/2023.
//

import UIKit

class HomeViewController: UIViewController {
    
//    var Name = ""
    
   
  
    @IBOutlet weak var lblWelcome: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        var User = UserDefaults.standard.object(forKey: "Username")
        var Pass = UserDefaults.standard.object(forKey: "Password")
        
        if let _user = User {
            lblWelcome.text = "Welcome \(_user)"
        }
    }
    

    @IBAction func btnLogOut(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: "Username")
        UserDefaults.standard.removeObject(forKey: "Password")
    }
    

}
