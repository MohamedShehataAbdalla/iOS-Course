//
//  ViewController.swift
//  MuiltLanguages
//
//  Created by odc on 06/04/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var btnChangeLang: UIButton!
    
    @IBOutlet weak var lblWelcome: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        lblWelcome.text = NSLocalizedString("welcome", comment: "Label Welcome in Home Page")
        btnChangeLang.setTitle(NSLocalizedString("changeLang", comment: ""), for: .normal)
        
        
    }

    @IBAction func btnChangeLanguages(_ sender: Any) {
        let currentLang =  Locale.current.languageCode
        print(currentLang)
        let newLang = currentLang == "en" ? "ar" : "en"
        UserDefaults.standard.set([newLang], forKey: "AppleLanguages")
        exit(0)
        
    }
    
}

