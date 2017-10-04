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
    var inputType : Bool?
    
    
      
        
        repeat {
        inputType = true
        let choice = readLine()!
        switch choice {
        case "1" : newCharacter = Dwarf()
            print("You selected Dwarf")
        case "2" : newCharacter = Giant()
            print("You selected Giant")
        case "3" : newCharacter = Warrior()
            print("You selected Warrior")
        case "4" : newCharacter = Wizard()
            print("You selected Wizard")
        default: inputType = false
            print("Choice is wrong, please select a number between 1 and 4")
            
        }
    
     }while !inputType!
        return newCharacter!
        
    }
   



    func createTeam () {
        
        
        
    }
    
    func fight () {
        
    }
    
    



        



}

