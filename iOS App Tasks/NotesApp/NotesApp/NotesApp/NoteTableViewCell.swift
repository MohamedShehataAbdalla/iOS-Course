//
//  NoteTableViewCell.swift
//  NotesApp
//
//  Created by odc on 26/03/2023.
//

import UIKit

class NoteTableViewCell: UITableViewCell {

    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblDetils: UILabel!
    @IBOutlet weak var lbltitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setUp(note: Note){
        lbltitle.text = note.title
        lblDetils.text = note.details
        
    }
    


}
