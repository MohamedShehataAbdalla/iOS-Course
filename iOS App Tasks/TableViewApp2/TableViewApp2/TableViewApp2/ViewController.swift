//
//  ViewController.swift
//  TableViewApp2
//
//  Created by odc on 18/03/2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

   

    
    @IBOutlet weak var tableView: UITableView!
    
    var arrStudent = ["Amr", "Gamal", "Ramadan", "Ghanem", "Mohsen", "Ali", "Ahmed", "Yousif"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrStudent.count
    }
    

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellTable", for: indexPath)
        
        cell.textLabel?.text = arrStudent[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(arrStudent[indexPath.row])
    }
    

}

