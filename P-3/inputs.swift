//
//  inputs.swift
//  P-3
//
//  Created by vincent  on 25/09/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

//==========================
//Inputs from the player  ||
//==========================



import Foundation


func inputName() {
    if let name = readLine(){
        print("Welcome in game \(name)")
        
        
    }
    
}

func inputCharacters1Name() {
    if let charactersName1 = readLine(){
        print("\(charactersName1) is ready to fight !")
    }
    
}

func inputCharacters2Name() {
    if let charactersName2 = readLine(){
        print("\(charactersName2) is ready to fight !")
    }

    
}

func inputCharacters3Name() {
    if let charactersName3 = readLine(){
        print("\(charactersName3) is ready to fight !")
        
    }

    
}

func teamNumber() {
    if let number = readLine() {
        switch number {
        case "1":
            print("You selected team number 1")
        case "2":
            print("You selected team numer 2")
        default :
            teamNumber()
        }
    }
}

