//
//  GameCharacterParent.swift
//  P-3
//
//  Created by Aurelien  on 02/11/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation
class GameCharacter  {
    
   
    
    var name: String               //name of the game character rename from the player
    var id: Int                    //id of the game character to select for create team
    var maxHP: Int               // Max life points
    var healthPoints: Int           //life points during the battle
    var weapon: Weapon?
    var hitPoints : Int {            // return hit points from the damage points of the weapon
        if let used = weapon{
            return used.damagePoints!
        }else{
            return 0
        }
    }
    init(){
        name = ""
        id = 0
        maxHP = 100
        healthPoints = 100
    }
    func attack(target : GameCharacter) {      //game character selected received damage from weapon
        print("\(self.name) decided to Heal \(target.name) ")
        
        target.healthPoints -= self.hitPoints
    }
    
 /*   func openChest () { // Method to popup a chest with a new weapon inside
        print("A Chest appeared, \(self.name) decided to open it ")
        print()
        let weaponInsideChest : Weapon
        
        switch self.type {
        case .Warrior :
            weaponInsideChest = Sword (damagePoints : 60)
            print("\(self.name) found a new Sword with a 10 bonus points attack!" )
        case .Dwarf :
            weaponInsideChest = Axe (damagePoints : 80)
            print("\(self.name) found a new Axe with a 10 bonus points attack!" )
        case .Giant :
            weaponInsideChest = Hammer (damagePoints : 50)
            print("\(self.name) found a new Hammer with a 10 bonus points attack!" )
        case .Wizard :
            weaponInsideChest = Stick (healingPoints : 50)
            print("\(self.name) found a new Stick with a 10 bonus points healing!" )
        }
        self.weapon = weaponInsideChest
    }
     */
    
    
    
    
}
