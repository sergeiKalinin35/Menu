# Menu
  
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
