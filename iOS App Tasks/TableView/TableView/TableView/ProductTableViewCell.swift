//
//  ProductTableViewCell.swift
//  TableView
//
//  Created by odc on 16/03/2023.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var btnAddToFav: UIButton!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var imgProduct: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    func setupCell(name: String, price: Double, description: String, photo: UIImage){
        
        lblName.text = name
        lblPrice.text = String(price)
        lblDescription.text = description
        imgProduct.image = photo
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
