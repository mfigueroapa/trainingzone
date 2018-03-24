//
//  Category.swift
//  TrainingZone
//
//  Created by Mauricio Figueroa on 11/27/17.
//  Copyright © 2017 Mauricio Figueroa. All rights reserved.
//

import Foundation

struct Category {
    
    private(set) public var title : String
    private(set) public var imageName: String
   
    
    init(title: String, imageName:String) {
        self.title = title
        self.imageName = imageName
        
        
    }
    
    
    func getTitle() -> String
    {
        return title
    }
    
    func getImageName() -> String
    {
        return imageName
    }
    
}
