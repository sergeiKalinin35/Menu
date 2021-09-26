//
//  GroupCell.swift
//  Menu
//
//  Created by Sergey on 24.09.2021.
//

import UIKit

class GroupCell: UICollectionViewCell {
    
    
    @IBOutlet weak var nameGroup: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.contentView.backgroundColor = backgroundColor
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setupCell(group: Group, isSelected: Bool) {
        self.nameGroup.text = group.name
        
        if isSelected {
            
            self.contentView.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
            
        } else {
            
            self.contentView.backgroundColor = backgroundColor
            
        }
    }
    
    
}
