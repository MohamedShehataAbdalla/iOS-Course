//
//  ProductCollectionViewCell.swift
//  CollectionApp
//
//  Created by odc on 21/03/2023.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var imgProduct: UIImageView!
    
    func setupCell(image: UIImage, price: Double){
        lblPrice.text = "\(price) EL"
        imgProduct.image = image
    }
}
