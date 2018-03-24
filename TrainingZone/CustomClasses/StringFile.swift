//
//  UDLAPStringFile.swift
//  App05
//
//  Created by Mauricio Figueroa on 11/15/17.
//  Copyright © 2017 Mauricio Figueroa. All rights reserved.
//

import Foundation

class StringFile
{
    var array: Array<String>?
    var next : Int
    var filePath : String
    //
    
    init(_ fileName : String)
    {
        array = []
        next = 0
        filePath = Bundle.main.path(forResource: fileName, ofType: "txt")!
    }//end init
    
    func open()
    {
        var dataText : String?
        //
        do
        {
            dataText = try String(contentsOfFile: filePath, encoding: String.Encoding.utf8)
            array = dataText!.components(separatedBy: "\n")
            dataText = nil
        }//end do
        catch let error as NSError
        {
            print("Error")
            print(error)
        }//end catch
    }//end open
    
    func size() -> Int
    {
        return array!.count-1
    }// size
    
    func get(_ i : Int) -> String?
    {
        var string : String?
        //
        string = nil
        if((array?.count)! > 0)
        {
            if ((i < size()) && (i >= 0))
            {
                string = array?[i]
                next = i + 1
            }//end if
        }//end if
        return  string
    }//end get
}

