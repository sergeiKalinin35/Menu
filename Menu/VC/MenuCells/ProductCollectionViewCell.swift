//
//  ProductCollectionViewCell.swift
//  Menu
//
//  Created by Sergey on 24.09.2021.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    
    
    
    @IBOutlet weak var productImage: UIImageView!
    
    @IBOutlet weak var nameProduct: UILabel!
    
    @IBOutlet weak var priceProduct: UILabel!
    
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    // переиспользование ячейки
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.productImage.image = nil
    }
    
    func setupCell(product: Product) {
        
        self.productImage.image = product.image
        self.nameProduct.text = product.name
        self.priceProduct.text = ("\(product.price)")

        
        
    }
    
    
    
    

}
