//
//  ViewController.swift
//  AdhamApp
//
//  Created by odc on 05/04/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var btnLang: UIButton!
    
    @IBOutlet weak var lblWelcome: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblWelcome.text = NSLocalizedString("Welcome", comment: "label Welcome in Welcome Page")
        
        btnLang.setTitle( NSLocalizedString("changeLang", comment: ""), for: .normal)
        
    }

    @IBAction func btnChangeLang(_ sender: Any) {
        
        let currentLang = Locale.current.languageCode
        
        let newLang = currentLang == "en" ? "ar" : "en"
        
        
        UserDefaults.standard.setValue([newLang], forKeyPath: "AppleLanguages")
        
        exit(0)
        
        
    }
    
}

