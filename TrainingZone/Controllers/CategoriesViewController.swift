//
//  CategoriesViewController.swift
//  TrainingZone
//
//  Created by Mauricio Figueroa on 11/27/17.
//  Copyright © 2017 Mauricio Figueroa. All rights reserved.
//

import UIKit

class CategoriesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Model.initialize()
        tableView.dataSource = self
        tableView.delegate = self
  

        
    }

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = Model.categories[indexPath.row]
            cell.updateView(category: category)
            return cell
        } else {
            return CategoryCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = Model.categories[indexPath.row]
        if (category.getTitle() == "ALL EXERCISES") {
            performSegue(withIdentifier: "AllExercisesViewController", sender: category)
        }
        if (category.getTitle() == "EXERCISES BY MUSCLE") {
            performSegue(withIdentifier: "ExercisesByMuscleViewController", sender: category)
        }
        if (category.getTitle() == "REPS TO PERFORM") {
            performSegue(withIdentifier: "RepsInfo", sender: category)
        }
        if (category.getTitle() == "NUTRITION") {
            performSegue(withIdentifier: "NutritionViewController", sender: category)
        }
        
        
    }
}
