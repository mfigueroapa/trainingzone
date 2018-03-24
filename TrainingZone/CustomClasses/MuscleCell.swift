//
//  MuscleCell.swift
//  TrainingZone
//
//  Created by Mauricio Figueroa on 11/30/17.
//  Copyright © 2017 Mauricio Figueroa. All rights reserved.
//

import UIKit

import UIKit

class MuscleCell: UITableViewCell {
    


    @IBOutlet weak var muscleImage: UIImageView!
    
    @IBOutlet weak var muscleTitle: UILabel!
    
    func updateView(muscle: Category) {
        muscleImage.image = UIImage(named: muscle.imageName)
        muscleTitle.text = muscle.title
    }
    
    
    
}

