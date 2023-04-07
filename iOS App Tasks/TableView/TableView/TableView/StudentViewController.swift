//
//  StudentViewController.swift
//  TableView
//
//  Created by odc on 16/03/2023.
//

import UIKit

class StudentViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    
    @IBOutlet weak var tvProduct: UITableView!
    
    
    var arrProducts = [product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tvProduct.delegate = self
        tvProduct.dataSource = self
        
        
        arrProducts.append(product.init(name: "Laptop Dell 11G", price: 10000.0, description: "Laptop Dell Core i7 RAM 32 SSD 1T", image: UIImage(named: "dell.png")!))
        arrProducts.append(product.init(name: "Laptop HP 10G", price: 10000.0, description: "Laptop HP Core i5 RAM 16 SSD 1T", image: UIImage(named: "hp.png")!))
        arrProducts.append(product.init(name: "Laptop Apple 11G", price: 10000.0, description: "Laptop Apple Core i7 RAM 32 SSD 1T", image: UIImage(named: "apple.png")!))
        arrProducts.append(product.init(name: "Laptop Lenovo 11G", price: 10000.0, description: "Laptop Lenovo Core i7 RAM 32 SSD 1T", image: UIImage(named: "lenovo.png")!))
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tvProduct.dequeueReusableCell(withIdentifier: "cellTable") as! ProductTableViewCell
        
        let data = arrProducts[indexPath.row]
        
        cell.setupCell(name: data.name, price: data.price, description: data.description, photo: data.image)
        
        cell.btnAddToFav.tag = indexPath.row
        cell.btnAddToFav.addTarget(self, action: #selector(addToFav(sender:)), for: .touchUpInside)
        
        
        return cell
    }
    
    
    @objc
    func addToFav(sender: UIButton){

        print("index in Button = \(sender.tag)")

        sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)

    }

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Select in Row index = \(indexPath.row) and Name =. \(arrProducts[indexPath.row].name)")
    }

}


struct product {
    var name: String
    var price: Double
    var description: String
    var image: UIImage
}
