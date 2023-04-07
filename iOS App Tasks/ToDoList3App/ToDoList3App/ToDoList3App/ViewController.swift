//
//  ViewController.swift
//  ToDoList3App
//
//  Created by odc on 02/04/2023.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    

    @IBOutlet weak var tasksTableView: UITableView!
    @IBOutlet weak var txtTask: UITextField!
    
    var arrTasks = [Task]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tasksTableView.delegate = self
        tasksTableView.dataSource = self
    }

    @IBAction func btnEdit(_ sender: Any) {
        
        tasksTableView.isEditing = !tasksTableView.isEditing
        
    }
    
    @IBAction func btnAdd(_ sender: Any) {
        
        let appDell = UIApplication.shared.delegate as! AppDelegate
        let context : NSManagedObjectContext = appDell.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "TasksTable", in: context)
        
        let task = Task(entity: entity!, insertInto: context)
        
        task.task_name = txtTask.text
        task.created_at = Date().formatted()
        
        do {
            try context.save()
            arrTasks.append(task)
            print("Data Saved")
            reload()
            
        }catch {
            print("Error")
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrTasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tasksTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        let item = arrTasks[indexPath.row]
        cell.setupCell(task_title: item.task_name, task_date: item.created_at)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func reload(){
        txtTask.text = ""
        tasksTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        arrTasks.swapAt(sourceIndexPath.row , destinationIndexPath.row)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let deleteButton = UIContextualAction(style: .destructive, title: "Del") { _, _, _ in
            self.arrTasks.remove(at: indexPath.row)
            self.tasksTableView.beginUpdates()
            
            self.tasksTableView.deleteRows(at: [indexPath], with: .automatic)
            
            self.tasksTableView.endUpdates()
        }
        
        
        
        return UISwipeActionsConfiguration(actions:  [deleteButton] )
        
    }
    
    
}

