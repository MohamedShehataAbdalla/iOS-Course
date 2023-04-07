//
//  ViewController.swift
//  AppCalculator
//
//  Created by odc on 11/03/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblOP: UILabel!
    @IBOutlet weak var txtResult: UITextField!
    @IBOutlet weak var num2txt: UITextField!
    @IBOutlet weak var num1txt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func divided_btn(_ sender: UIButton) {
        lblOP.text= "+"
        
    }
    @IBAction func sumbtm(_ sender: UIButton) {
    }
    
    @IBAction func product_btm(_ sender: UIButton) {
    }
}

