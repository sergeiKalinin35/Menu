//
//  MainViewController.swift
//  Menu
//
//  Created by Sergey on 25.09.2021.
//

import UIKit

class MainViewController: UIViewController {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let menu = Menu()

    override func viewDidLoad() {
        super.viewDidLoad()
        
     
        
        
        self.collectionView.register(UINib(nibName: "MainCell", bundle: nil), forCellWithReuseIdentifier: "MainCell")

        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        
    }
    
}

extension MainViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return  menu.groups.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainCell", for: indexPath) as! MainCell
        
        let group = menu.groups[indexPath.item]
        
        cell.setupCell(group: group)
        
        
        
        return cell
    }
    
    // размер ячейки 2 ячейки в строку в коллектион вью
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width / 2, height: 160)
    }
    
    
   // ПЕРЕХОД  с вьюшками метод  didSelectItemAt
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let group = self.menu.groups[indexPath.item]
        
        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "MenuViewController") as? MenuViewController {
            
        
        vc.group = group
            
            self.navigationController?.pushViewController(vc, animated: true)
        
        }
    }

    
    
}
