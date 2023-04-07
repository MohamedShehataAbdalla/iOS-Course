//
//  ViewController.swift
//  StudentsAppTableView
//
//  Created by odc on 19/03/2023.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{


    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var tvStudent: UITableView!
    
    
    var arrStudent = [String]()
    var arrFav = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tvStudent.delegate = self
        tvStudent.dataSource = self
        
    }
    
    
    @IBAction func btnAdd(_ sender: UIButton) {
        
        if let name = txtName.text {
            arrStudent.append(name)
            let indexPath = IndexPath(row: arrStudent.count - 1 , section: 0)
            tvStudent.beginUpdates()
            tvStudent.insertRows(at: [indexPath], with: .automatic)
            tvStudent.endUpdates()
            print(arrStudent)
            txtName.text = ""
            
            
        }
    }
    
    
    @IBAction func btnEdit(_ sender: UIButton) {
        
        tvStudent.isEditing = !tvStudent.isEditing
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrStudent.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tvStudent.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        
        cell.textLabel?.text = arrStudent[indexPath.row]
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        arrStudent.swapAt(sourceIndexPath.row, destinationIndexPath.row)
        print(arrStudent)
    }

    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        
        let deleteButton = UIContextualAction(style: .destructive, title: "Delete") { _, _, _ in
            
            self.arrStudent.remove(at: indexPath.row)
            self.tvStudent.beginUpdates()
            self.tvStudent.deleteRows(at: [indexPath], with: .automatic)
            self.tvStudent.endUpdates()
        }
        
        let favoritButton = UIContextualAction(style: .normal, title: "Fav") { _, _, _ in
        
            self.arrFav.append(self.arrStudent[indexPath.row])
        }
        
        deleteButton.image = UIImage(systemName: "trash")
        favoritButton.image = UIImage(systemName: "heart.fill")
        
        
        return UISwipeActionsConfiguration(actions: [deleteButton, favoritButton])
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }


}

