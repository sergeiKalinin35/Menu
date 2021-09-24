//
//  MenuViewController.swift
//  Menu
//
//  Created by Sergey on 24.09.2021.
//

import UIKit

class MenuViewController: UIViewController {

    
    @IBOutlet var collectionView: UICollectionView!
    
    
    @IBOutlet weak var groupsCollectionView: UICollectionView!
    
    var menu = Menu()
    var selectedGroupIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionView.register(UINib(nibName: "ProductCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ProductCollectionViewCell")
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
      
        
        self.groupsCollectionView.register(UINib(nibName: "GroupCell", bundle: nil), forCellWithReuseIdentifier: "GroupCell")
        self.groupsCollectionView.dataSource = self
        self.groupsCollectionView.delegate = self
        
    }
    

    

}

// MARK: - DataSource, Delegate
extension MenuViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        // ставим условие
        if collectionView == groupsCollectionView {
            return menu.groups.count
        } else {
            
            let group = menu.groups[selectedGroupIndex]
            return group.products.count
        }
        
    }
    
    //MARK: - создаем ячейки
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == groupsCollectionView {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GroupCell", for: indexPath) as! GroupCell
            
            let group = menu.groups[indexPath.item]
            
            cell.setupCell(group: group)
             
            return cell
            
        } else {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCollectionViewCell", for: indexPath) as! ProductCollectionViewCell
            let group = menu.groups[indexPath.item]
            let product = group.products[indexPath.item]
            cell.setupCell(product: product)
            
            return cell
            
        }
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == groupsCollectionView {
            
            let groupName = menu.groups[indexPath.item].name
            let width = groupName.widthOfString(usingFont: UIFont.systemFont(ofSize: 17))
            return CGSize(width: width + 20, height: collectionView.frame.height )
            
            
            } else {
            
            return CGSize(width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.height - 400)
        }
        
        
    }
    
    // отступы между ячейками
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    
    // вверхняя коллекция вью
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if collectionView == groupsCollectionView {
            
            self.selectedGroupIndex = indexPath.item
            self.collectionView.reloadData()
            
            
        }
        
        
        
        
    }
    
}




