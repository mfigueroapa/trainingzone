//
//  MusclesViewController.swift
//  TrainingZone
//
//  Created by Mauricio Figueroa on 11/30/17.
//  Copyright © 2017 Mauricio Figueroa. All rights reserved.
//

import UIKit

class ExercisesBySelectedMuscleViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var exercisesCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        exercisesCollectionView.dataSource = self
        exercisesCollectionView.delegate = self
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var correctMuscle : [Exercise] = []
        correctMuscle = getCorrectMuscleExercisesArray(muscleType: Model.currentMuscleSelectedInMuscleSelectorViewController)
        return correctMuscle.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = exercisesCollectionView.dequeueReusableCell(withReuseIdentifier: "MuscleExerciseCell", for: indexPath) as? ExerciseCell {
            var correctMuscle : [Exercise] = []
            correctMuscle = getCorrectMuscleExercisesArray(muscleType: Model.currentMuscleSelectedInMuscleSelectorViewController)
            let exercise = correctMuscle[indexPath.row]
            cell.updateViews(exercise: exercise )
            return cell
        }
        return ExerciseCell()
    }
    
    func getCorrectMuscleExercisesArray (muscleType : String) -> [Exercise]{
        var muscleArray : [Exercise] = []
        if (Model.currentMuscleSelectedInMuscleSelectorViewController == "CHEST") {
            muscleArray = Model.chestExercises
        }
        if (Model.currentMuscleSelectedInMuscleSelectorViewController == "BACK") {
            muscleArray = Model.backExercises
        }
        if (Model.currentMuscleSelectedInMuscleSelectorViewController == "BICEP") {
            muscleArray = Model.bicepExercises
        }
        if (Model.currentMuscleSelectedInMuscleSelectorViewController == "TRICEP") {
            muscleArray = Model.tricepExercises
        }
        if (Model.currentMuscleSelectedInMuscleSelectorViewController == "LEG") {
            muscleArray = Model.legExercises
        }
        if (Model.currentMuscleSelectedInMuscleSelectorViewController == "ABS") {
            muscleArray = Model.absExercises
        }
        return muscleArray
    }

}
