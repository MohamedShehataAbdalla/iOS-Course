//
//  TableViewCell.swift
//  ToDoList3App
//
//  Created by odc on 02/04/2023.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lblTaskDate: UILabel!
    @IBOutlet weak var lblTaskTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(task_title: String, task_date: String){
        
        lblTaskTitle.text = task_title
        lblTaskDate.text = task_date
        
    }

}
