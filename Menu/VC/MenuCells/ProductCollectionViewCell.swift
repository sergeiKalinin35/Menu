//
//  ProductCollectionViewCell.swift
//  Menu
//
//  Created by Sergey on 24.09.2021.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    private var products = [Product]()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        // регистрируем ячейку
        self.tableView.register(UINib(nibName: "ProductTableViewCell", bundle: nil), forCellReuseIdentifier: "ProductTableViewCell")
        
        
    }
   
    
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
     
    }
    
    
    func setupCell(products: [Product]) {
        self.products = products
        self.tableView.reloadData()
        
    }
    
}


extension ProductCollectionViewCell: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell") as! ProductTableViewCell
 
         cell.setupCell(product: self.products[indexPath.row])
 
        return cell
       
        }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }
    
}
