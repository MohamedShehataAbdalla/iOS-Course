//
//  ProductTableViewCell.swift
//  ProductList
//
//  Created by odc on 18/03/2023.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    @IBOutlet weak var lblNameProdct: UILabel!
    @IBOutlet weak var lblPriceProduct: UILabel!
    @IBOutlet weak var lblDescriptionProduct: UILabel!
    @IBOutlet weak var imgProduct: UIImageView!
    
    @IBOutlet weak var btnAddToFav: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(name: String, price: Double, description: String, image: UIImage){
        
        lblNameProdct.text = name
        lblPriceProduct.text = String(price)
        lblDescriptionProduct.text = description
        imgProduct.image = image
        
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
