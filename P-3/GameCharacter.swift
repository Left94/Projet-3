//
//  GameCharacter.swift
//  P-3
//
//  Created by vincent  on 27/09/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation





class GameCharacter {
   
    enum GameCharacterRace {
        
        case warrior
        case giant
        case dwarf
        case wizard
    }

    var name: String?
    var number: Int?
    var type: GameCharacterRace?
    var healthPoints: Int?
    var stayingHealth: Int?
    var weapon: Weapon?
    

        func takeDamage(damage : Int) {
             print("\(self.name!) has been hit and received \(damage)")
        }
        
        func attack(target : GameCharacter) {
            print("\(self.name!) decide to attack \(target.name!) ")
            target.takeDamage(damage: (weapon?.damagePoints)!)
        }
    
        
}

        

    
    


