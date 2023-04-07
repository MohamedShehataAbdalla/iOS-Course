//
//  SliderViewController.swift
//  CollectionApp
//
//  Created by odc on 21/03/2023.
//

import UIKit

class SliderViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    
    

    @IBOutlet weak var collectionView: UICollectionView!
    
    var arrslider = [UIImage(named: "apple")!, UIImage(named: "dell")!, UIImage(named: "hp")!, UIImage(named: "LG")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrslider.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellSlider", for: indexPath) as! SliderCollectionViewCell
        
        cell.imgSlider.image = arrslider[indexPath.row]
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width , height: self.view.frame.width)
    }
    
    

}
