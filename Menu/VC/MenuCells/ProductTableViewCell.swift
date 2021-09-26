//
//  ProductTableViewCell.swift
//  Menu
//
//  Created by Sergey on 26.09.2021.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
    }

    func setupCell(product: Product) {
        
        self.productImage.image = product.image
        self.productName.text = product.name
        self.productPrice.text = "\(product.price)"
    }
}
