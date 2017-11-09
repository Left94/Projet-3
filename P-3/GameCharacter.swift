//
//  GameCharacter.swift
//  P-3
//
//  Created by vincent  on 27/09/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation





class GameCharacter  {
    
    
    
    var name: String                //name of the game character rename from the player
    var id: Int                     //id of the game character to select for create team
    var maxHP: Int                  // Max life points
    var healthPoints: Int           //life points during the battle
    var weapon: Weapon?
    var hitPoints : Int
    var hpPoints : Int
    init(){
       
        name = ""
        id = 0
        maxHP = 100
        healthPoints = 100
        hitPoints = 100
        hpPoints = 100
        
    }
    func attack(target : GameCharacter) {      //game character selected received damage from weapon
        print("\(self.name) decided to Attack \(target.name) ! ⚔️")
        target.healthPoints -= self.hitPoints
        print("\(target.name) has been hit and lost \(self.hitPoints) HP ! 💔")
        if target.healthPoints <= 0 {
            target.healthPoints = 0
            print("\(target.name) lost all his life and die! 💀")
        }else{
            print("\(target.name) has now \(target.healthPoints) HP... ❣️")
            
        }
    }
    
   func openChest () { // Method to popup a chest with a new weapon inside
     print("A Chest appeared 🔒 ! \(self.name) decided to open it 🔓 ! ")
     print()
     var weaponInsideChest : Weapon?
        
         switch self {
             case is Warrior :
                weaponInsideChest = Sword ()
                hitPoints = 60
                print("\(self.name) found a new Sword with a 10 bonus points attack! 💪 " )
                print("\(self.name) can now attack with \(hitPoints) of power ! ✨⚔️✨ ")
             case is Dwarf :
                weaponInsideChest = Axe ()
                hitPoints = 80
                print("\(self.name) found a new Axe with a 10 bonus points attack! 💪" )
                print("\(self.name) can now attack with \(hitPoints) of power ! ✨⚔️✨ ")
             case is Giant :
                weaponInsideChest = Hammer ()
                hitPoints = 50
                print("\(self.name) found a new Hammer with a 10 bonus points attack! 💪" )
                print("\(self.name) can now attack with \(hitPoints) of power ! ✨⚔️✨ ")
             case is Wizard :
                weaponInsideChest = Stick ()
                hpPoints = 50
                print("\(self.name) found a new Stick with a 10 bonus points healing! 💪" )
                print("\(self.name) can now heal with \(hpPoints) of heal points ! ✨💉✨ ")
             default:
                print("The chest was empty")
       }
        self.weapon = weaponInsideChest
   }
    
    
    func attackX2(target : GameCharacter) {      //game character selected received damage from weapon
        print("Would you like to use your unique double attack skill?")
        if let choice = readLine(){
            switch choice{
                case "1" :
                    print("Yes")
                    print("\(self.name) decided to Attack \(target.name) ! ⚔️")
                    target.healthPoints -= self.hitPoints * 2
                    print("\(target.name) has been hit and lost \(self.hitPoints) HP ! 💔")
                    if target.healthPoints <= 0 {
                        target.healthPoints = 0
                        print("\(target.name) lost all his life and die! 💀")
                    }else{
                        print("\(target.name) has now \(target.healthPoints) HP... ❣️")
                        
                }
            
                case "2" :
                    print("Not this turn")
            default:
                print(",")
            }
        }
        
    }
        
        
        
    
}
