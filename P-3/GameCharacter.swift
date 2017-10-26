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
    var hitPoints: Int {            // hit points from the damage points of the weapon
        if let used = weapon {
            return used.damagePoints!
        } else {
        return 0
        }
    }
    
    
    
    func attack(target : GameCharacter) {      //game character selected received damage from weapon
        print("\(self.name!) decided to attack \(target.name!) ")
        target.takeDamage(damage: (self.hitPoints))
        
    }
    
    
    func takeDamage(damage : Int) {       //game character's life decrease of weapon's damages pts
        print("\(self.name!) has been hit and received \(damage)")
        stayingHealth! -= damage
        if stayingHealth! <= 0 {
            print("\(self.name!) has been killed !")
            
        }
    }
    
    
    
    func recoverHP (hp : Int) {            //game character's life increase of weapon's healing pts
        print("\(self.name!) has been health and recover \(hp)")
        stayingHealth! += hp
        
    }
    
    
    
    
        
    
    
        
}

        

    
    


