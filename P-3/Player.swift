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
    var player : [Int] = []
    var playerId : Int?
    var numberOfPlayer = 2
    
    
    init(playerId : Int  ) {
        self.playerId = playerId
        
    }
    
   
    
    
    
    
//==================================================================
    func initializePlayers() {
        
        print("Please enter your player number between 1 and 2:")

        var inputNumber : Bool
        
        repeat {
            
        inputNumber = true
        
            
            if let choice = readLine() {
                
                switch choice {
                case "1" :
                    playerId! = 2
                case "2" :
                    playerId! = 3
                    
                default : inputNumber = false
                }
                
                }
            } while !inputNumber
       player.append(playerId!)
       print("\(player)")
    }
//===================================================================
    
    
    
//===================================================================
//Func to see if the input name of the game character already exist||
//===================================================================
    func nameAlreadyExist(equal name : String )-> Bool {
        var alreadyExist = false
        for gameCharacterExist in teamMembers {
            if name == gameCharacterExist.name! {
                alreadyExist = true
            }
        }
        return alreadyExist
    }
//===================================================================
//func to select the game characters for the team player           ||
//===================================================================


    func selectGameCharacter () {
    
    print("Welcome player \(playerId!)!")
    print("Please select your team's characters")
    print()
    print("Enter a number between 1 and 4:")
    print()
    print("1------>Dwarf-------->Smaller but Stronger->Weapon: Axe,   Damage: 70------->Health: 50pts" )
    print("2------>Giant-------->A good Tank---------->Weapon: Hammer,Damage: 40------->Health: 130pts" )
    print("3------>Warrior------>A good fighter------->Weapon: Sword, Damage: 50------->Health: 90pts" )
    print("4------>Wizard------->Just a Healer-------->Weapon: Stick, RecoverSkill: 40->Health: 70pts" )
    
     
    var newCharacter : GameCharacter?
    var inputType : Bool?
    var inputName : Bool
    var characterNumber : Int?
        
// Player has to selected his member' s team
        repeat {
        inputType = true
            if let choice = readLine(){
        switch choice {
        case "1" : newCharacter = Dwarf()
                   characterNumber = 1
            print("Player \(playerId!) selected Dwarf")
        case "2" : newCharacter = Giant()
                   characterNumber = 2
            print("Player \(playerId!)selected Giant")
        case "3" : newCharacter = Warrior()
                   characterNumber = 3
            print("Player \(playerId!) selected Warrior")
        case "4" : newCharacter = Wizard()
                   characterNumber = 4
            print("Player \(playerId!) selected Wizard")
        default: inputType = false
            print("Choice is wrong, please select a number between 1 and 4")
            
        }
    
     }
    }     while !inputType!
        
        
        print("Player \(playerId!) , give a name to your character :")
        
        
//Player has to rename his selected game character
        repeat {
             inputName = true
             newCharacter!.name = readLine()
            
//call of the func nameAlreadyExist to see if the name is unique
            
            if nameAlreadyExist( equal : newCharacter!.name!)    {
                inputName = false
                print("Name already exist, please right another name !")
            }
            
            }while !inputName
        
        
 //add of the new character to the array teamMembers
     
        newCharacter!.id = characterNumber!
        
        teamMembers.append(newCharacter!)
        
        print("\(newCharacter!.name!) joined the team")
        
        
    }
   


    
    
    
    
    
    
    
    func createTeam () {
        for _ in 0...2 {
            
            selectGameCharacter()
                
                   }
    }
        
    func generateTheTeam() {
        print()
        print("Here is the Player's \(playerId!) team:")
        for renamed in teamMembers {
            print("Good luck to \(renamed.name!) who will play as a \(renamed.type!)!")
        }
    }
        
        
        
        
        
        
        func fight () {
        
    }
    
    



        



}


