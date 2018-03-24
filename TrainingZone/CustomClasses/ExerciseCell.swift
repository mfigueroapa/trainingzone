//
//  ExerciseCell.swift
//  TrainingZone
//
//  Created by Mauricio Figueroa on 11/27/17.
//  Copyright © 2017 Mauricio Figueroa. All rights reserved.
//

import UIKit

class ExerciseCell: UICollectionViewCell {
    
    
    @IBOutlet weak var exerciseImage: UIImageView!
    @IBOutlet weak var muscleLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    func updateViews(exercise: Exercise) {
        exerciseImage.image = UIImage(named: exercise.getImageName())
        muscleLabel.text = "Muscle: \(exercise.getMuscle()) "
        nameLabel.text = exercise.getName()
        
    }
}
