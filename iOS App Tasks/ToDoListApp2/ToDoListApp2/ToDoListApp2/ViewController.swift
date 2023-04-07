//
//  ViewController.swift
//  ToDoListApp2
//
//  Created by odc on 01/04/2023.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
  
    var arrTasks = [Task]()

    @IBOutlet weak var txtTask: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrTasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        let item = arrTasks[indexPath.row]
        cell.setupCell(task: item.task_name, date: item.created_at)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        arrTasks.swapAt(sourceIndexPath.row, destinationIndexPath.row)
    }
    
 
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let appDel = UIApplication.shared.delegate as! AppDelegate
        let context : NSManagedObjectContext = appDel.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "TasksTable", in: context)
        let task = Task(entity: entity!, insertInto: context)
        
        let deleteButton = UIContextualAction(style: .destructive, title: "Del") { _, _, _ in
            
            self.arrTasks.remove(at: indexPath.row)
            self.tableView.beginUpdates()
            self.tableView.deleteRows(at: [indexPath], with: .automatic)
            self.tableView.endUpdates()
            
            context.delete(task)
            do{
                try context.save()
                print("Deleted Data")
            }catch{
                print("Error")
            }
        }
        
        
        return UISwipeActionsConfiguration(actions: [deleteButton])
        
    }
   
    @IBAction func btnEdit(_ sender: Any) {
        tableView.isEditing = !tableView.isEditing
    }
    
    @IBAction func btnAdd(_ sender: Any) {
        let appDel = UIApplication.shared.delegate as! AppDelegate
        let context : NSManagedObjectContext = appDel.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "TasksTable", in: context)
        let task = Task(entity: entity!, insertInto: context)
        task.task_name = txtTask.text
        task.created_at = Date().formatted()
        do{
            try context.save()
            print("Data saved")
            arrTasks.append(task)
            txtTask.text = ""
            tableView.reloadData()
            
        }catch{
            print("Error")
        }
    }
    
    
    
}
