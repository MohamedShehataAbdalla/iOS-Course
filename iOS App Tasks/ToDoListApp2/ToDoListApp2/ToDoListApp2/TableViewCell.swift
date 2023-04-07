//
//  TableViewCell.swift
//  ToDoListApp2
//
//  Created by odc on 01/04/2023.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblTask: UILabel!
    
    @IBOutlet weak var lblDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(task: String, date:String){
        lblTask.text = task
        lblDate.text = date
    }

}
