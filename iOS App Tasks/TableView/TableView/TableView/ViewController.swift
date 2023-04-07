//
//  ViewController.swift
//  TableView
//
//  Created by odc on 16/03/2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableViewStudent: UITableView!
    
    var arrStudent = ["Ali", "Abdallah", "Fahd", "Abanob", "Abdelqdus", "Mohamed", "Yousif", "Tarq", "Aya", "Mina"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        tableViewStudent.delegate = self
        tableViewStudent.dataSource = self
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrStudent.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewStudent.dequeueReusableCell(withIdentifier: "cellTable", for: indexPath)
        
        cell.textLabel?.text = arrStudent[indexPath.row]
        
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(arrStudent[indexPath.row])
    }
    
    
    

}

