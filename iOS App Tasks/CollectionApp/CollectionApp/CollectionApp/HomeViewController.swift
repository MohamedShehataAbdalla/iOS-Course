//
//  HomeViewController.swift
//  CollectionApp
//
//  Created by odc on 21/03/2023.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var itemControl: UIPageControl!
    
    @IBOutlet weak var collectionSlider: UICollectionView!
    
    var arrSlider = [UIImage(named: "image1")!,UIImage(named: "image2")!,UIImage(named: "image3")!,UIImage(named: "image4")!]
    var timer: Timer?
    
    var CurrentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionSlider.delegate = self
        collectionSlider.dataSource = self
        
        itemControl.numberOfPages = arrSlider.count
        
        startTimer()
    }
    
    
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(moveToNextSlide), userInfo: nil, repeats: true)
        
    }
    
    @objc func moveToNextSlide(){
        
        if CurrentIndex < arrSlider.count - 1 {
            CurrentIndex += 1
        }else
        {
            CurrentIndex = 0
        }
        
                
        collectionSlider.scrollToItem(at: IndexPath(row: CurrentIndex, section: 0), at: .centeredHorizontally, animated: true)
        itemControl.currentPage = CurrentIndex
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrSlider.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellSlider", for: indexPath) as! HomeCollectionViewCell
        
        cell.imgSlider.image = arrSlider[indexPath.row]
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width, height: self.view.frame.width)
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0 
    }

}
