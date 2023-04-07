//
//  ViewController.swift
//  CollectionApp
//
//  Created by odc on 21/03/2023.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    

    @IBOutlet weak var productCollectionView: UICollectionView!
    
    var arrProduct = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productCollectionView.delegate = self
        productCollectionView.dataSource = self
        
        
        arrProduct.append(Product.init(image: UIImage(named: "apple")!, price: 15000))
        arrProduct.append(Product.init(image: UIImage(named: "dell")!, price: 13000))
        arrProduct.append(Product.init(image: UIImage(named: "hp")!, price: 12000))
        arrProduct.append(Product.init(image: UIImage(named: "huawei")!, price: 11000))
        arrProduct.append(Product.init(image: UIImage(named: "lenovo")!, price: 10000))
        arrProduct.append(Product.init(image: UIImage(named: "LG")!, price: 16000))
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrProduct.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = productCollectionView.dequeueReusableCell(withReuseIdentifier: "cellProduct", for: indexPath) as! ProductCollectionViewCell
        
        let product = arrProduct[indexPath.row]
        
        cell.backgroundColor = UIColor(red: 255, green: 0, blue: 0, alpha: 0.5)
        
        cell.setupCell(image: product.image, price: product.price)
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width * 0.495 , height: self.view.frame.width * 0.495)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1)
    }
    
    
    
}




struct Product {
    var image: UIImage
    var price: Double
}


