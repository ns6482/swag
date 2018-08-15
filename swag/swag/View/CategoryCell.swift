//
//  CategoryCellTableViewCell.swift
//  swag
//
//  Created by Nehal Soni on 15/08/2018.
//  Copyright © 2018 Nehal Soni. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryLabel.text = category.title
    }

}
