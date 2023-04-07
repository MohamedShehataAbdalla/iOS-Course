//
//  ViewController.swift
//  ListStudnetApp
//
//  Created by odc on 20/03/2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var txtStudent: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    var arrStudent = [String]()
    
    var arrFav = [String]()
    
    
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            
    
        cell.textLabel?.text = arrStudent[indexPath.row]
        return cell
    }
    
    
    
    @IBAction func btnAdd(_ sender: UIButton) {
        
        if let name = txtStudent.text {
            arrStudent.append(name)
            
            let indexPath = IndexPath(row: arrStudent.count - 1 , section: 0)
            tableView.beginUpdates()
            tableView.insertRows(at: [indexPath], with: .automatic)
            tableView.endUpdates()
            txtStudent.text = ""
            
            print(arrStudent)
        }
        
    }
    
    
    
    @IBAction func btnEdit(_ sender: UIButton) {
        tableView.isEditing = !tableView.isEditing
    }
    
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        arrStudent.swapAt(sourceIndexPath.row, destinationIndexPath.row)
    }
    
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let btnRemove = UIContextualAction(style: .destructive, title: "") { _, _, _ in
            
            self.arrStudent.remove(at: indexPath.row)
            self.tableView.beginUpdates()
            self.tableView.deleteRows(at: [indexPath], with: .automatic)
            self.tableView.endUpdates()
            
        }
        
        
        let btnFav = UIContextualAction(style: .normal, title: "") { _, _, _ in
            self.arrFav.append(self.arrStudent[indexPath.row])
            print(self.arrFav)
        }
        
        
        btnRemove.image = UIImage(systemName: "trash")
        btnFav.image = UIImage(systemName: "heart.fill")
        
        
        
     return UISwipeActionsConfiguration(actions: [btnRemove, btnFav ] )
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
 
    


}

