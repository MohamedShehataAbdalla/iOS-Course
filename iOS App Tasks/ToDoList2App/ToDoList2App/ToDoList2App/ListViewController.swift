//
//  ListViewController.swift
//  ToDoList2App
//
//  Created by odc on 28/03/2023.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    
    @IBOutlet weak var tasksTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tasksTableView.delegate = self
        tasksTableView.dataSource = self
        tasksTableView.reloadData()
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrTasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tasksTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = arrTasks[indexPath.row].task_name
        
        
        return cell
    }


}
