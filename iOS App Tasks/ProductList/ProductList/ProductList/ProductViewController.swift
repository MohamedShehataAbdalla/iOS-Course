//
//  ProductViewController.swift
//  ProductList
//
//  Created by odc on 18/03/2023.
//

import UIKit

class ProductViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var tabelViewProduct: UITableView!
    
    var arrProducts = [Products]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tabelViewProduct.delegate = self
        tabelViewProduct.dataSource = self
        
        // Add Data To Array
        arrProducts.append(Products.init(name: "Dell Laptop", price: 10000.0, description: "Dell Laptop Core i7 32 Ram SSD 1T", image: UIImage(named: "dell")!))
        
        
        arrProducts.append(Products.init(name: "HP Laptop", price: 10000.0, description: "HP Laptop Core i7 32 Ram SSD 1T", image: UIImage(named: "hp")!))
        arrProducts.append(Products.init(name: "Apple Laptop", price: 10000.0, description: "Apple Laptop Core i7 32 Ram SSD 1T", image: UIImage(named: "apple")!))
        arrProducts.append(Products.init(name: "LG Laptop", price: 10000.0, description: "LG Laptop Core i7 32 Ram SSD 1T", image: UIImage(named: "LG")!))
        arrProducts.append(Products.init(name: "Huawei Laptop", price: 10000.0, description: "Huawei Laptop Core i7 32 Ram SSD 1T", image: UIImage(named: "huawei")!))
        arrProducts.append(Products.init(name: "Lenovo Laptop", price: 10000.0, description: "Lenovo Laptop Core i7 32 Ram SSD 1T", image: UIImage(named: "lenovo")!))
        
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellTable") as! ProductTableViewCell
        
        let data = arrProducts[indexPath.row]
        
        cell.btnAddToFav.tag = indexPath.row
        cell.btnAddToFav.addTarget(self, action: #selector(addToFav(sender:)), for: .touchUpInside)
        
        cell.setupCell(name: data.name, price: data.price, description: data.description, image: data.image)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 100
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(arrProducts[indexPath.row].name)
    }
    
    
    @objc
    func addToFav(sender: UIButton){
        print("Enter by button with index = \(arrProducts[sender.tag].name)")
        sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
    }


}


struct Products {
    var name: String
    var price: Double
    var description: String
    var image: UIImage
}
