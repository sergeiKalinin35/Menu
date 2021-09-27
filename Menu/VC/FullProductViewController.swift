//
//  FullProductViewController.swift
//  Menu
//
//  Created by Sergey on 26.09.2021.
//

import UIKit

class FullProductViewController: UIViewController {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var products = [Product]()
    
    var indexPath = IndexPath(item: 0, section: 0)
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
        // регистрация ячейки
        self.collectionView.register(UINib(nibName: "FullProductCell", bundle: nil), forCellWithReuseIdentifier: "FullProductCell")
        
        
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        
        
        
        self.collectionView.performBatchUpdates(nil) { (_) in
            self.collectionView.scrollToItem(at: self.indexPath, at: .centeredHorizontally, animated: false)
            
          
        }
       
    }
}

extension FullProductViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FullProductCell", for: indexPath) as! FullProductCell
        
        cell.setupCell(product: self.products[indexPath.item])
        
      return cell
    }
    
// размеры ячейки на весь экран
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return collectionView.frame.size
        
    }
    
}


