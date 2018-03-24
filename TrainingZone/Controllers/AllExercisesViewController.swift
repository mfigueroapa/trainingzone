//
//  AllExercisesViewController.swift
//  TrainingZone
//
//  Created by Mauricio Figueroa on 11/27/17.
//  Copyright © 2017 Mauricio Figueroa. All rights reserved.
//

import UIKit

class AllExercisesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    

    @IBOutlet weak var exercisesCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        exercisesCollectionView.dataSource = self
        exercisesCollectionView.delegate = self
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Model.allExercises.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = exercisesCollectionView.dequeueReusableCell(withReuseIdentifier: "AllExercisesCell", for: indexPath) as? ExerciseCell {
            let exercise = Model.allExercises[indexPath.row]
            cell.updateViews(exercise: exercise )
            return cell
        }
        return ExerciseCell()
        
    }

  

}
