//
//  ViewController.swift
//  TableViewApp
//
//  Created by odc on 16/03/2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {



    
    @IBOutlet weak var tvStudent: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tvStudent.delegate = self
        tvStudent.dataSource = self
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tvStudent.dequeueReusableCell(withIdentifier: "cellTable", for: indexPath)
        
        cell.textLabel?.text = "Mohamed"
        return cell
    }
    
    


}

