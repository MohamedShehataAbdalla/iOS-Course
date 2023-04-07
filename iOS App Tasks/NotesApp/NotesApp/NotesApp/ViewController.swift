//
//  ViewController.swift
//  NotesApp
//
//  Created by odc on 26/03/2023.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var txtDetils: UITextView!
    @IBOutlet weak var txtTitle: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSave(_ sender: Any) {
        let appDel = UIApplication.shared.delegate as! AppDelegate
        let context: NSManagedObjectContext = appDel.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "NotesTable", in: context)
        
        let note = Note(entity: entity!, insertInto: context)
        note.title = txtTitle.text
        note.details = txtDetils.text
        do{
            try context.save()

            arrNotes.append(note)

            print("Data Saved Successfuily")
        }
        catch{
            print("Error")
        }
    }
    

}

