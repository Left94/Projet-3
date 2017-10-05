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
    print()
    print("Enter a number between 1 and 4:")
    print()
    print("1------>Dwarf-------->Smaller but Stronger->Weapon: Axe,   Damage: 70------->Health: 50pts" )
    print("2------>Giant-------->A good Tank---------->Weapon: Hammer,Damage: 40------->Health: 130pts" )
    print("3------>Warrior------>A good fighter------->Weapon: Sword, Damage: 50------->Health: 90pts" )
    print("4------>Wizard------->Just a Healer-------->Weapon: Stick, RecoverSkill: 40->Health: 70pts" )
    var newCharacter : GameCharacter?
    var characterNumber : Int
        
        
        var inputType : Bool?
    
    
      
        
        repeat {
        inputType = true
        let choice = readLine()!
        switch choice {
        case "1" : newCharacter = Dwarf()
                   characterNumber = 1
            print("You selected Dwarf")
        case "2" : newCharacter = Giant()
                   characterNumber = 2
            print("You selected Giant")
        case "3" : newCharacter = Warrior()
                   characterNumber = 3
            print("You selected Warrior")
        case "4" : newCharacter = Wizard()
                   characterNumber = 4
            print("You selected Wizard")
        default: inputType = false
            print("Choice is wrong, please select a number between 1 and 4")
            
        }
    
     }while !inputType!
        
        
        print("rename your character")
        var inputName : Bool?
        
        
        repeat {
        inputName = true
        newCharacter!.name = readLine()!
            print("Welcome on board \(String(describing: newCharacter?.name))")
        }while !inputName!
        
        
        
        teamMembers.append(newCharacter!)
        return newCharacter!
        
    }
   



    func createTeam () {
    
        
    
        for inputNumber in 0...1 {
            selectGameCharacter()
            
        }
       
        
            
        
        
        
    }
    
    func fight () {
        
    }
    
    



        



}

