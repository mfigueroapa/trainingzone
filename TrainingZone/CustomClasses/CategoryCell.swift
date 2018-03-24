//
//  CategoryCell.swift
//  TrainingZone
//
//  Created by Mauricio Figueroa on 11/27/17.
//  Copyright © 2017 Mauricio Figueroa. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateView(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

  

}
