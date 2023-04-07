//
//  ViewController.swift
//  appHello
//
//  Created by odc on 11/03/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txt_weight: UITextField!
    
    @IBOutlet weak var txt_Age: UITextField!
    @IBOutlet weak var txt_height: UITextField!
    
    @IBOutlet weak var Hello: UIButton!
    
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var txt_result: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

  
    
    @IBAction func Change(_ sender: UIButton) {
        Label.text = "HI"
    }
    
    
}

