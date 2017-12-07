//
//  GameCharacter.swift
//  P-3
//
//  Created by vincent  on 27/09/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation





class GameCharacter  {
    
    // VARIABLES
    
    var name: String                //name of the game character rename from the player
    var id: Int                     //id of the game character to select for create team
    var maxHP: Double                  // Max life points
    var healthPoints: Double           //life points during the battle
    var weapon: Weapon?             //game character's equipment
    var hitPoints : Double             //dammage points from the bonus weapon
    var hpPoints : Double              //heal pooints from the bonus weapon

    // INITIALIZERS

    init(){
       
        name = ""
        id = 0
        healthPoints = 0
        hitPoints = 0
        hpPoints = 0
        maxHP = 0
    }
    
    // METHODS
    
    func attack(target : GameCharacter) {      //game character selected received damage from weapon
        print()
        print("\(self.name) decided to Attack \(target.name) ! ⚔️")
        if self.healthPoints <= 20{
            target.healthPoints -= self.weapon!.damagePoints * 1.5
            if let weapon = self.weapon as? Sword {
                print("\(self.name) is on Fire 🔥 and attack with \(weapon.name)")
            }
           else if let weapon = self.weapon as? Axe {
                print("\(self.name) is on Fire 🔥 and attack with \(weapon.name)")
            }
           else if let weapon = self.weapon as? Hammer {
                print("\(self.name) is on Fire 🔥 and attack with \(weapon.name)")
            }
            
            print("\(target.name) received CRITICAL HIT 🌪 and lost \(self.weapon!.damagePoints * 1.5) HP ! 💔")
            if target.healthPoints <= 0 {
                target.healthPoints = 0
                print("\(target.name) lost all his life and die! 💀")
            }else{
                print("\(target.name) has now \(target.healthPoints) HP... ❣️")
                if target.healthPoints <= 20{
                    print("\(target.name) is now on FIRE 🔥 ! ")
                }
                
            }
            
        }else{
        print()
        target.healthPoints -= self.weapon!.damagePoints
        if let weapon = self.weapon as? Sword {
            print("\(self.name) attack with \(weapon.name)")
        }
        else if let weapon = self.weapon as? Axe {
            print("\(self.name) attack with \(weapon.name)")
        }
       else if let weapon = self.weapon as? Hammer {
            print("\(self.name) attack with \(weapon.name)")
        }
        
        print("\(target.name) has been hit and lost \(self.weapon!.damagePoints) HP ! 💔")
        if target.healthPoints <= 0 {
            target.healthPoints = 0
            print("\(target.name) lost all his life and die! 💀")
          }else{
                print("\(target.name) has now \(target.healthPoints) HP... ❣️")
            if target.healthPoints <= 20{
                print("\(target.name) is now on FIRE 🔥 ! ")
            }
          }
        
       }
    }
    
   func openChest () { // Method to popup a chest with a new weapon inside
     print("A Chest appeared 🔒 ! \(self.name) decided to open it 🔓 ! ")
     print()
     var weaponInsideChest : Weapon?
        
         switch self {
             case is Warrior :
                weaponInsideChest = Sword()
                if let weapon = weaponInsideChest as? Sword{
                    weapon.name = " ✨SWORD FROM CHEST✨"
                    weapon.damagePoints = 20
                }
                print("""
                \(self.name) found a ✨NEW SWORD✨ with a 10 bonus points attack! 💪
                \(self.name) equip now his new weapon ! ✨⚔️✨
                """)
             case is Dwarf :
                weaponInsideChest = Axe()
                if let weapon = weaponInsideChest as? Axe{
                    weapon.name = "✨AXE FROM CHEST✨"
                    weapon.damagePoints = 140
                }
                print("""
                \(self.name) found a ✨NEW AXE✨ with a 10 bonus points attack! 💪
                \(self.name) equip now his new weapon ! ✨⚔️✨
                """)
             case is Giant :
                weaponInsideChest = Hammer()
                if let weapon = weaponInsideChest as? Hammer{
                    weapon.name = "✨HAMMER FROM CHEST✨"
                    weapon.damagePoints = 60
                }
                print("""
                \(self.name) found a ✨NEW HAMMER✨ with a 10 bonus points attack! 💪
                \(self.name) equip now his new weapon ! ✨⚔️✨
                """)
             case is Wizard :
                weaponInsideChest = Stick()
                if let weapon = weaponInsideChest as? Stick{
                    weapon.name = "✨STICK FROM CHEST✨"
                    weapon.healingPoints = 30
                }
                print("""
                \(self.name) found a ✨NEW STICK✨ with a 10 bonus points healing! 💪
                \(self.name) equip now his new weapon ! ✨💉✨
                """)
             default:
                print("The chest was empty")
       }
        self.weapon = weaponInsideChest!
   }
}
