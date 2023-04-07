//
//  ViewController.swift
//  ToDoList2App
//
//  Created by odc on 28/03/2023.
//

import UIKit
import CoreData

var arrTasks = [ToDoTask]()

class CreateViewController: UIViewController {
    
    


    @IBOutlet weak var txtTask: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnSave(_ sender: Any) {
        let Appdell = UIApplication.shared.delegate as! AppDelegate
        let context  : NSManagedObjectContext = Appdell.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "TasksTable", in: context)
        let item = ToDoTask(entity: entity!, insertInto: context)
        item.task_name = txtTask.text
        
        do{
            
            try context.save()
            
            arrTasks.append(item)
            print("Done")
        }catch {
            print("Error")
        }
    }
}

