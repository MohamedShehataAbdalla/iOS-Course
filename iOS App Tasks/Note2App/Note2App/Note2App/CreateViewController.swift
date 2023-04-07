//
//  ViewController.swift
//  Note2App
//
//  Created by odc on 27/03/2023.
//

import UIKit
import CoreData

class CreateViewController: UIViewController {

    @IBOutlet weak var txtTitle: UITextField!
    @IBOutlet weak var txtDetails: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func btnSave(_ sender: Any) {
        let appDel = UIApplication.shared.delegate as! AppDelegate
        let context : NSManagedObjectContext = appDel.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "NotesTable", in: context)
        
        let note = Note(entity: entity! , insertInto: context)
        
        
        note.title = txtTitle.text
        note.details = txtDetails.text
        
        
        do{
            try context.save()
            print("Data Saved Successfily")
        }catch{
            print("Error")
        }
        
        
    }
    

}

