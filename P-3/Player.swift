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
    var playerId : Int?
    
    init(playerId : Int  ) {
        self.playerId = playerId
    }
    
   
    
    
    
    
//==================================================================
    
    
//===================================================================
    
    
    

//Method to see if the input name of the game character already exist

    func nameAlreadyExist( equal name : String , enemyTeam :[GameCharacter])-> Bool {
        var alreadyExist = false
        for gameCharacterExist in enemyTeam {
            if name == gameCharacterExist.name! {
                alreadyExist = true
            }
        }
                for gameCharacterExist in teamMembers {
                    if name == gameCharacterExist.name! {
                    alreadyExist = true
                    }
                }
                return alreadyExist
    }

// Method to select the game characters for the team player

    func chooseGameCharacter (enemy : Player) {
        print()
        print("Player \(playerId!), please select your team's character")
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
        
        
// Player has to selected his member' s team
        repeat {
            inputType = true
            if let choice = readLine(){
                switch choice {
                    case "1" :
                        newCharacter = Dwarf()
                        
                        print("Player \(playerId!) selected Dwarf")
                    case "2" :
                        newCharacter = Giant()
                        
                        print("Player \(playerId!) selected Giant")
                    case "3" :
                        newCharacter = Warrior()
                        
                        print("Player \(playerId!) selected Warrior")
                    case "4" :
                        newCharacter = Wizard()
                        
                        print("Player \(playerId!) selected Wizard")
                    default:
                        inputType = false
                        print("Choice is wrong, please select a number between 1 and 4")
            
                }
            }
        } while !inputType!
            print("Player \(playerId!) , give a name to your character :")
        
        
// Player has to rename his selected game character
        repeat {
             inputName = true
             newCharacter!.name = readLine()
            
// Call of the method nameAlreadyExist to see if the name is unique
            
            if nameAlreadyExist( equal : newCharacter!.name!, enemyTeam: enemy.teamMembers ) || newCharacter!.name!.isEmpty    {
                inputName = false
                print("Please enter a no-empty name who hasn t already used:")
            }
            
        }while !inputName
        
        
// Add the new character to the array teamMembers
     
        teamMembers.append(newCharacter!)
        
        print("\(newCharacter!.name!) the \(newCharacter!.type!) joined the team")
    }
// Method to repeat and add new game character in the team members list 3 times
    
    func createTeam (enemy : Player) {
        for _ in 0...2 {
            chooseGameCharacter(enemy : enemy )
        }
}
// Method to list all the renamed game characters with their own type (dwarf, giant, wizard, warrior) in the created team to inform the player
    func teamDisplay() {
        print("Player \(playerId!), this is your team:")
        for renamed in teamMembers {
                print("\(renamed.name!) play as a \(renamed.type!)!")
        }
    }
 // Method to inform the player' s turn to play
    
    func playerTurnDisplay(playerId : Int) {
        print()
        print("Player \(playerId), this is your turn to play!")
    }
    
// Method to select a game Character from player' s list to do an action with it
    
    func selectGameCharacter( player : Player)-> GameCharacter {
        
        
        let character1 = teamMembers[0]
        let character2 = teamMembers[1]
        let character3 = teamMembers[2]
        var characterSelected : GameCharacter?
        var inputType : Bool?
        print("Please enter a number to select a character :")
        print()
        print("1--->\(character1.name!) who is playing as a \(character1.type!)")
        print("2--->\(character2.name!) who is playing as a \(character2.type!)")
        print("3--->\(character3.name!) who is playing as a \(character3.type!)")
        print()
        
    repeat {
        inputType = true
            if let choice = readLine() {
                switch choice {
                    case "1" :
                        characterSelected = character1
                        print("You selected \(character1.name!) as \(character1.type!) !")
            
                    case "2" :
                
                        characterSelected = character2
                        print("You selected \(character2.name!) as \(character2.type!) !")
            
                    case "3" :
                
                        characterSelected = character3
                        print("You selected \(character3.name!) as \(character3.type!) !")
                
                default : inputType = false
                    print("Choice is wrong, please select a number between 1 and 3")
                
              }
                if characterSelected?.type == .Wizard {
                    let wizard = characterSelected as! Wizard
                    print("Select a character to heal in your team")
                    let ownCharacterSelected = selectGameCharacter(player: self)
                    wizard.health(target: ownCharacterSelected)
                    
                }else{
                 // will ask to choose a target in player' s 2 team to attack //
                }
          }
    }while !inputType!
 return characterSelected!
}
//================================================================
    func fight () {
        
        }


}
