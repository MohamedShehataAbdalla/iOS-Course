//
//  ProductTableViewCell.swift
//  TableViewApp2
//
//  Created by odc on 18/03/2023.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    
    @IBOutlet weak var imgProduct: UIImageView!
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblDescription: UILabel!
    
    @IBOutlet weak var lblPrice: UILabel!
    
    @IBOutlet weak var btnAddToFav: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    
    func setupCell(image: UIImage, name: String, price: Double, description: String){
        
        
        imgProduct.image = image
        lblName.text = name
        lblPrice.text = String(price)
        lblDescription.text = description
        
    }
    
    
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
