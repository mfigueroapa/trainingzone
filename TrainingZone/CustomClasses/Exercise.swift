//
//  Exercise.swift
//  TrainingZone
//
//  Created by Mauricio Figueroa on 11/25/17.
//  Copyright © 2017 Mauricio Figueroa. All rights reserved.
//

import UIKit

class Exercise
{
    private var name : String
    private var muscle : String
    private var imageName : String
    //
    
    
    init(_ aName: String, _ aMuscle:String, _ anImageName: String)
    {
        name = aName
        muscle = aMuscle
        imageName = anImageName
        
    }
    
    
    func getName() -> String
    {
        return name
    }
    
    func getMuscle() -> String
    {
        return muscle
    }
    
    func getImageName() -> String
    {
        return imageName
    }
    
    
    
}
