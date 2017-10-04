//
//  Player.swift
//  P-3
//
//  Created by vincent  on 27/09/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation




class Player {
    
    
    
    var teamMembers : [GameCharacter] = []
    let playerId : Int
    
    
    init(playerId : Int) {
        self.playerId = playerId
    }
    
    








    func selectGameCharacter()->GameCharacter  {
    
    print("Please select your team players")
    print("Enter a number between 1 and 4")
    var newCharacter : GameCharacter?
    var inputType : Bool
    inputType = true
    let choice = readLine()!
        
        switch choice {
        case "1" : newCharacter = Dwarf()
        case "2" : newCharacter = Giant()
        case "3" : newCharacter = Warrior()
        case "4" : newCharacter = Wizard()
        default: inputType = false
            
        }
    
     return newCharacter!
        
    }
        
    
   



    func createTeam () {
        
        
        
    }
    
    func fight () {
        
    }
    
    



        



}

