//
//  GroupCell.swift
//  Menu
//
//  Created by Sergey on 24.09.2021.
//

import UIKit

class GroupCell: UICollectionViewCell {
    
    
    @IBOutlet weak var nameGroup: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setupCell(group: Group) {
        self.nameGroup.text = group.name
    }
    
    
}
