//
//  SectionVC.swift
//  StudentsAppTableView
//
//  Created by odc on 19/03/2023.
//

import UIKit

class SectionVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var lblDataNotFound: UILabel!
    
        

    @IBOutlet weak var imgDataNotFound: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
//    var arrSections = ["A", "M", "F", "Z"]
    
    var arrNewStudent = ["Khaled", "Mohamed", "Abdelqdus"]
    
    var arrStudents = ["Ahmed", "Abdallah", "Ali", "Aya", "Abdelrahman"]
    
    var ayaRefresh = UIRefreshControl()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        
//        arrSections.removeAll()
        
        if arrStudents.count == 0 {
            print("Hidden")
            tableView.isHidden = true
        }
        
        
        ayaRefresh.addTarget(self, action: #selector(getData), for: .valueChanged)
        tableView.addSubview(ayaRefresh)
        
        
    }
    
    @objc func getData(){
        
        
        if arrNewStudent.count > 0 {
            arrStudents.append(contentsOf: arrNewStudent)
            
            ayaRefresh.endRefreshing()
            
            tableView.reloadData()
            arrNewStudent.removeAll()
        }
        
        
        
    }
    
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return arrSections.count
//    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return arrStudents[section].count
        return arrStudents.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
//        cell.textLabel?.text = arrStudents[indexPath.section][indexPath.row]
        cell.textLabel?.text = arrStudents[indexPath.row]
        
        return cell
    }
    
//
//    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
//        return "Footer \(arrSections[section])"
//    }
//
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return arrSections[section]
//    }
//

}
