//
//  ViewController.swift
//  productsApp
//
//  Created by odc on 16/03/2023.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{

    
    var arrProduct = [product]()
    
    @IBOutlet weak var tableviewStudent: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableviewStudent.delegate = self
        tableviewStudent.dataSource = self
        
        
        arrProduct.append(product.init(name: "Laptop", price: 10000.0, description: "Laptop Dell core i7 32 Ram SSD 1T", image: UIImage(named: "")!))
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableviewStudent.dequeueReusableCell(withIdentifier: "cellTable") as! ProductTableViewCell
        let data = arrProduct[indexPath.row]
        
        cell.setupCell(photo: UIImage, name: <#T##String#>, price: <#T##Double#>, description: <#T##String#>)
        
        
        return cell
    }

}


struct product{
    var name: String
    var price: Double
    var description: String
    var image: UIImage
}

