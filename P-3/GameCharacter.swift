//
//  GameCharacter.swift
//  P-3
//
//  Created by vincent  on 27/09/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation





class GameCharacter  {
   
    enum GameCharacterRace  {
        
        case Warrior
        case Giant
        case Dwarf
        case Wizard
    }

    var name: String?               //name of the game character rename from the player
    var id: Int?                    //id of the game character to select for create team
    var type: GameCharacterRace?    //type of the game character from the race enum
    var healthPoints: Int?          //life points of the game character at the start of the battle
    var stayingHealth: Int?         //life points during the battle
    var weapon: Weapon?
    var hitPoints : Int {            // return hit points from the damage points of the weapon
        if let used = weapon{
            return used.damagePoints!
        }else{
        return 0
        }
    }
    var hpPoints: Int {            // return hp points from the damage points of the weapon
        if let used = weapon {
            return used.healingPoints!
        }else{
        return 0
        }
    }
    
    
    
    func attack(target : GameCharacter) {      //game character selected received damage from weapon
        print("\(self.name!) decided to attack \(target.name!) ")
        target.takeDamage(damage: self.hitPoints)
        
    }
    
    
    func takeDamage(damage : Int ) {       //game character's life decrease of weapon's damages pts
        print("\(self.name!) has been hit and lost \(damage) HP")
        stayingHealth! -= damage
        print("\(self.name!) has \(stayingHealth!) HP")
        if stayingHealth! <= 0 {
            print("\(self.name!) has been killed !")
            
        }
    }
    
    func health (target : GameCharacter) { //game character selected received healing pts from weapon
        target.recoverHP(hp: self.hpPoints )
        
    }
    func recoverHP ( hp : Int  ) {            //game character's life increase of weapon's healing pts
        print("\(self.name!) has been health and recover \(hp)")
        stayingHealth! += hp
        print("\(stayingHealth!)")
    }
    
    
    
    
    func openChest () { // Method to popup a chest with a new weapon inside
        print("A Chest appeared, \(self.name!) decided to open it ")
        print()
        let weaponInsideChest : Weapon
        
            switch self.type! {
                case .Warrior :
                    weaponInsideChest = Sword (damagePoints : 60)
                    print("\(self.name!) found a new Sword with a 10 bonus points attack!" )
                case .Dwarf :
                    weaponInsideChest = Axe (damagePoints : 80)
                    print("\(self.name!) found a new Axe with a 10 bonus points attack!" )
                case .Giant :
                    weaponInsideChest = Hammer (damagePoints : 50)
                    print("\(self.name!) found a new Hammer with a 10 bonus points attack!" )
                case .Wizard :
                    weaponInsideChest = Stick (healingPoints : 50)
                    print("\(self.name!) found a new Stick with a 10 bonus points healing!" )
            }
        self.weapon = weaponInsideChest
    }
        
    
    
        
}

        

    
    


