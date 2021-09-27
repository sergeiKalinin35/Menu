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
    
    
  
    
    
    var group: Group!
    var selectedGroup: Group? {
        didSet {
            if let groupS = self.selectedGroup {
                
                self.title = groupS.name
                
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
        
       collectionView.backgroundView = UIImageView(image: #imageLiteral(resourceName: "dark-grunge-texture"))
        groupsCollectionView.backgroundView = UIImageView(image: #imageLiteral(resourceName: "dark-grunge-texture"))
        
        

        self.collectionView.register(UINib(nibName: "ProductCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ProductCollectionViewCell")
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
      
        
        self.groupsCollectionView.register(UINib(nibName: "GroupCell", bundle: nil), forCellWithReuseIdentifier: "GroupCell")
        self.groupsCollectionView.dataSource = self
        self.groupsCollectionView.delegate = self
        
        if let groups = group.groups, groups.count > 0 {
            selectedGroup = groups.first!
         } else {
            
            selectedGroup = group
            
        }
    }
        
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        if scrollView == collectionView {
            
            let cells = collectionView.visibleCells
            
            if let cell = cells.first, let indexPath = self.collectionView.indexPath(for: cell) {
                self.selectedGroup = self.group.groups![indexPath.item]
                self.groupsCollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
                self.groupsCollectionView.reloadData()
            }
        }
    }
    
  

    
    
    
    
    
    
}


// MARK: - DataSource, Delegate
extension MenuViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        // ставим условие
     //   if collectionView == groupsCollectionView {
            if let groups = group.groups {
                return groups.count
            } else {
                
                return 0
//            }
//        } else {
//
//            if  let products = selectedGroup?.products {
//                return products.count
//
//            } else {
//                return 0
//            }
//
      }
        
    }
    
    //MARK: - создаем ячейки
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == groupsCollectionView {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GroupCell", for: indexPath) as! GroupCell
            
            let group = self.group.groups![indexPath.item]
            
            let isSelected = group.name == selectedGroup!.name
            
            cell.setupCell(group: group, isSelected: isSelected)
             
            return cell
            
        } else {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCollectionViewCell", for: indexPath) as! ProductCollectionViewCell
          
            
            let products = self.group.groups![indexPath.item].products!
            
            cell.fullScreenHandler = fullScreenHandler2
          
            cell.setupCell(products: products)
            
            return cell
            
        }
    }
    
    //MARK: - ???
    
    public override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        if UIDevice.current.orientation.isLandscape,
           let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.invalidateLayout()
        } else if UIDevice.current.orientation.isPortrait,
                  let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
                   layout.invalidateLayout()
          }
  }
    
func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == groupsCollectionView {
            
            let groupName = self.group.groups![indexPath.item].name
            let width = groupName.widthOfString(usingFont: UIFont.systemFont(ofSize: 17))
            return CGSize(width: width + 20, height: collectionView.frame.height )
            
            
            } else {
            
            return CGSize(width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.height - 300)
        }
        
        
    }
    
    // отступы между ячейками
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    
    // вверхняя коллекция вью
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if collectionView == groupsCollectionView {
            
            self.selectedGroup = self.group.groups![indexPath.item]
            //выравниваем скролл сверху группа
            self.groupsCollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
            
            
            self.groupsCollectionView.reloadData()
            self.collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
          //  self.collectionView.reloadData()
            
        }
    }
    
}


// ПЕРЕХОД на FullProductViewController

extension MenuViewController {
    
    func fullScreenHandler2(cell: ProductCollectionViewCell, indexProduct: Int) {
        
        if let indexPath = self.collectionView.indexPath(for: cell) {
        let products = self.group.groups![indexPath.item].products!
            
            // взяли продукты и делаем новый переход на экран FullProductViewController
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(identifier: "FullProductViewController") as! FullProductViewController
            
            
            vc.products = products
            vc.indexPath = IndexPath(row: indexProduct, section: 0)
            
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}

