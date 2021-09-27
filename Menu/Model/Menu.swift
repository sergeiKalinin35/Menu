//
//  Menu.swift
//  Menu
//
//  Created by Sergey on 24.09.2021.
//

import Foundation
import UIKit


struct Group {
    var groups: [Group]?
    var name: String
    var products: [Product]?
    var image: UIImage
    
}




struct Product {
    var name: String
    var price: Float
    var image: UIImage
}




class Menu {
    
    var groups = [Group] ()
    
    init() {
        setup()
    }
    func setup() {
        
//MARK: - Pizza
        
     
        
        
        let p1 = Product(name: "Боча", price: 300, image: UIImage(named: "Боча")!)
        let p2 = Product(name: "U.S.A", price: 300, image: UIImage(named: "U.S.A.")!)
        let p3 = Product(name: "Четыре Сыра", price: 300, image: UIImage(named: "Четыре Сыра")!)
        
        let p4 = Product(name: "Прованс", price: 400, image: UIImage(named: "Прованс")!)
        let p5 = Product(name: "Мексика", price: 400, image: UIImage(named: "Мексика")!)
        let p6 = Product(name: "Итальяно", price: 400, image: UIImage(named: "Итальяно")!)
        
        let p7 = Product(name: "Граф", price: 500, image: UIImage(named: "Граф")!)
        let p8 = Product(name: "Маргарита", price: 500, image: UIImage(named: "Маргарита")!)
        let p9 = Product(name: "Веган", price: 500, image: UIImage(named: "Веган")!)
        
    
        
        
        let pizzaGroupIn1 = Group(groups: nil, name: "Pizza 'S 30cm", products: [p1, p2, p3], image: UIImage(named: "p1")!)
        let pizzaGroupIn2 = Group(groups: nil, name: "Pizza 'M 40cm", products: [ p4, p5, p6], image: UIImage(named: "p1")!)
        let pizzaGroupIn3 = Group(groups: nil, name: "Pizza 'L 50cm", products:[ p7, p8, p9], image: UIImage(named: "p1")!)
        
        
        let pizzaGroup = Group(groups: [pizzaGroupIn1, pizzaGroupIn2, pizzaGroupIn3], name: "PIZZA", products: nil, image: UIImage(named: "p1")!)
        
        
        
 //MARK: - Burger
        
        let b1 = Product(name: "Burger.1", price: 100, image: UIImage(named: "p2")!)
        let b2 = Product(name: "Burger.2", price: 100, image: UIImage(named: "p2")!)
        let b3 = Product(name: "Burger.3", price: 100, image: UIImage(named: "p2")!)
        
        let b4 = Product(name: "Burger.4", price: 200, image: UIImage(named: "p2")!)
        let b5 = Product(name: "Burger.5", price: 200, image: UIImage(named: "p2")!)
        let b6 = Product(name: "Burger.6", price: 200, image: UIImage(named: "p2")!)
        
        let b7 = Product(name: "Burger.7", price: 300, image: UIImage(named: "p2")!)
        let b8 = Product(name: "Burger.8", price: 300, image: UIImage(named: "p2")!)
        let b9 = Product(name: "Burger.9", price: 300, image: UIImage(named: "p2")!)
        
        let burgerGroupIn1 = Group(groups: nil, name: "Burger Bronze", products: [b1, b2, b3], image: UIImage(named: "p2")!)
        let burgerGroupIn2 = Group(groups: nil, name: "Burger Silver", products: [b4, b5, b6], image: UIImage(named: "p2")!)
        let burgerGroupIn3 = Group(groups: nil, name: "Burger Gold", products: [b7, b8, b9], image: UIImage(named: "p2")!)
        
        
        let burgerGroup = Group(groups: [burgerGroupIn1, burgerGroupIn2, burgerGroupIn3], name: "BURGER", products: nil, image: UIImage(named: "p2")!)
        
        
        
        //MARK: - Cheeseburger
        
        let c1 = Product(name: "Cheeseburger.1", price: 100, image: UIImage(named: "p3")!)
        let c2 = Product(name: "Cheeseburger.2", price: 100, image: UIImage(named: "p3")!)
        let c3 = Product(name: "Cheeseburger.3", price: 100, image: UIImage(named: "p3")!)
        
        let c4 = Product(name: "Cheeseburger.4", price: 200, image: UIImage(named: "p3")!)
        let c5 = Product(name: "Cheeseburger.5", price: 200, image: UIImage(named: "p3")!)
        let c6 = Product(name: "Cheeseburger.6", price: 200, image: UIImage(named: "p3")!)
        
        let c7 = Product(name: "Cheeseburger.7", price: 300, image: UIImage(named: "p3")!)
        let c8 = Product(name: "Cheeseburger.8", price: 300, image: UIImage(named: "p3")!)
        let c9 = Product(name: "Cheeseburger.9", price: 300, image: UIImage(named: "p3")!)
        
        let cheeseburgerGroupIn1 = Group(groups: nil, name: "Cheeseburger Bronze", products: [c1, c2, c3], image: UIImage(named: "p3")!)
        let cheeseburgerGroupIn2 = Group(groups: nil, name: "Cheeseburger Silver", products: [c4, c5, c6], image: UIImage(named: "p3")!)
        let cheeseburgerGroupIn3 = Group(groups: nil, name: "Cheeseburger Gold", products: [c7, c8, c9], image: UIImage(named: "p3")!)
        
        
        let cheeseburgerGroup = Group(groups: [cheeseburgerGroupIn1, cheeseburgerGroupIn2, cheeseburgerGroupIn3], name: "CHEESEBURGER", products: nil, image: UIImage(named: "p3")!)
        
        
        
      //MARK: - cola
        
        let co1 = Product(name: "Coca Colla.1", price: 100, image: UIImage(named: "cola")!)
        let co2 = Product(name: "Coca Colla.2", price: 100, image: UIImage(named: "cola")!)
        let co3 = Product(name: "Coca Colla.3", price: 100, image: UIImage(named: "cola")!)
        
        let co4 = Product(name: "Coca Colla.4", price: 200, image: UIImage(named: "cola")!)
        let co5 = Product(name: "Coca Colla.5", price: 200, image: UIImage(named: "cola")!)
        let co6 = Product(name: "Coca Colla.6", price: 200, image: UIImage(named: "cola")!)
        
        let co7 = Product(name: "Coca Colla.7", price: 300, image: UIImage(named: "cola")!)
        let co8 = Product(name: "Coca Colla.8", price: 300, image: UIImage(named: "cola")!)
        let co9 = Product(name: "Coca Colla.9", price: 300, image: UIImage(named: "cola")!)
        
        let colaGroupIn1 = Group(groups: nil, name: "Coca Colla Zero", products: [co1, co2, co3], image: UIImage(named: "cola")!)
        let colaGroupIn2 = Group(groups: nil, name: "Coca Colla Classic", products: [co4, co5, co6], image: UIImage(named: "cola")!)
        let colaGroupIn3 = Group(groups: nil, name: "Coca Colla Cherry", products: [co7, co8, co9], image: UIImage(named: "cola")!)
        
        
        let colaGroup = Group(groups: [colaGroupIn1, colaGroupIn2, colaGroupIn3], name: "COCA COLLA", products: nil, image: UIImage(named: "cola")!)
        
        
        
        
        
        
        
        
        
        
        groups.append(pizzaGroup)
        groups.append(burgerGroup)
        groups.append(cheeseburgerGroup)
        groups.append(colaGroup)
        
    }
}

// расширение для лайбла. Любой шрифт отоброжается полностью название лайбла
extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = (self as NSString).size(withAttributes: fontAttributes)
        
        return ceil(size.width)
    }
}


