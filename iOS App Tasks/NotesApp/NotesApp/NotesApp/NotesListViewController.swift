//
//  NotesListViewController.swift
//  NotesApp
//
//  Created by odc on 26/03/2023.
//

import UIKit
import CoreData


var arrNotes = [Note]()

class NotesListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    
    @IBOutlet weak var tableViewNotes: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewNotes.delegate = self
        tableViewNotes.dataSource = self
    }
    
    
    @IBAction func btnBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrNotes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewNotes.dequeueReusableCell(withIdentifier: "noteCell", for: indexPath) as! NoteTableViewCell
        
        cell.setUp(note: arrNotes[indexPath.row])
        
        return cell
        
        
    }
    
    
    func loadNotes(){
        let featchRequest : NSFetchRequest<NotesTable> = NotesTable.fetchRequest()
        let appDel = UIApplication.shared.delegate as! AppDelegate
        let context: NSManagedObjectContext = appDel.persistentContainer.viewContext
        do{
            try context.fetch(featchRequest)
            tableViewNotes.reloadData()
        }catch{
            print("Feach Error")
        }
        
        
    }
    

    

}
