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
            
            self.contentView.backgroundColor = #colorLiteral(red: 0.3516668081, green: 0.5583085418, blue: 0.5745483041, alpha: 1)
            
        } else {
            
            self.contentView.backgroundColor = backgroundColor
            
        }
    }
    
    
}
