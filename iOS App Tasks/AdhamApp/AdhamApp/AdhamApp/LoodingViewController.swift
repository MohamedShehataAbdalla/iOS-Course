//
//  LoodingViewController.swift
//  AdhamApp
//
//  Created by odc on 05/04/2023.
//

import UIKit
import NVActivityIndicatorView

class LoodingViewController: UIViewController {

    @IBOutlet weak var loadingview: NVActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()

        loadingview.type = .orbit
        loadingview.color = .red
        loadingview.startAnimating()
    }
    


    
    

}
