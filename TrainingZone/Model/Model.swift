//
//  Model.swift
//  TrainingZone
//
//  Created by Mauricio Figueroa on 11/25/17.
//  Copyright © 2017 Mauricio Figueroa. All rights reserved.
//

class Model
{
    static var allExercises : Array<Exercise> = []
    
    static var bicepExercises : Array<Exercise> = []
    static var tricepExercises : Array<Exercise> = []
    static var chestExercises : Array<Exercise> = []
    static var backExercises : Array<Exercise> = []
    static var legExercises : Array<Exercise> = []
    static var absExercises : Array<Exercise> = []
    
    static var categories : Array<Category> = []
    static var muscles : Array<Category> = []
    static var currentMuscleSelectedInMuscleSelectorViewController : String = ""
    
    
    static func initialize()
    {
        var file : StringFile
        var i: Int
        var name: String
        var muscle: String
        var imageName: String
        var exercise : Exercise
        var mainCategory : Category
        var muscleCategory : Category

        
        file = StringFile("datos")
        file.open()
        
        i = 0
    
        
        while(i < file.size()){
            name = file.get(i)!
            muscle = file.get(i+1)!
            imageName = file.get(i+2)!
            exercise = Exercise(name, muscle, imageName)
            

            // Bicep exercises
            if (exercise.getMuscle() == "Bicep") {
                Model.bicepExercises.append(exercise)
            }
            
            // Tricep exercises
            if (exercise.getMuscle() == "Tricep") {
                Model.tricepExercises.append(exercise)
            }
            
            // Chest exercises
            if (exercise.getMuscle() == "Chest") {
                Model.chestExercises.append(exercise)
            }
            
            // Back exercises

            if (exercise.getMuscle() == "Back") {
                Model.backExercises.append(exercise)
            }
            
            // Leg exercises
            if (exercise.getMuscle() == "Leg") {
                Model.legExercises.append(exercise)
            }
            
            // Abs exercises
            if (exercise.getMuscle() == "Abs") {
                Model.absExercises.append(exercise)
            }
            
            Model.allExercises.append(exercise)
            
            i = i + 4
        }//end while
        
        ///Creamos las tres secciones principales de la aplicacion
        mainCategory = Category(title: "ALL EXERCISES", imageName: "Exercises.jpeg")
        Model.categories.append(mainCategory)
        
        mainCategory = Category(title: "EXERCISES BY MUSCLE", imageName: "Routine.jpg")
        Model.categories.append(mainCategory)
        
        mainCategory = Category(title: "REPS TO PERFORM", imageName: "Workouts.jpg")
        Model.categories.append(mainCategory)
        
        mainCategory = Category(title: "NUTRITION", imageName: "nutritionCategory")
        Model.categories.append(mainCategory)
        
        //Creamos las secciones de el View Controller ExercisesByMucleViewController
        
        muscleCategory = Category(title: "CHEST", imageName: "chest.jpg")
        Model.muscles.append(muscleCategory)
        
        muscleCategory = Category(title: "BACK", imageName: "back")
        Model.muscles.append(muscleCategory)
        
        muscleCategory = Category(title: "BICEP", imageName: "bicep")
        Model.muscles.append(muscleCategory)
        
        muscleCategory = Category(title: "TRICEP", imageName: "tricep")
        Model.muscles.append(muscleCategory)
        
        muscleCategory = Category(title: "LEG", imageName: "leg")
        Model.muscles.append(muscleCategory)
        
        muscleCategory = Category(title: "ABS", imageName: "abs")
        Model.muscles.append(muscleCategory)


    }
}
