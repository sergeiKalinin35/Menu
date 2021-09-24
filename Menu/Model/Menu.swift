//
//  Menu.swift
//  Menu
//
//  Created by Sergey on 24.09.2021.
//

import Foundation
import UIKit


struct Group{
    
}




struct Product {
    var name: String
    var price: Float
    var image: UIImage
}




class Menu {
    
    var products = [Product] ()
    
    init() {
        setup()
    }
    func setup() {
        
        let p1 = Product(name: "product1", price: 750, image: UIImage(named: "p1")!)
        let p2 = Product(name: "product2", price: 450, image: UIImage(named: "p2")!)
        let p3 = Product(name: "product3", price: 300, image: UIImage(named: "p3")!)
        
        self.products = [p1, p2, p3]
    }
}





