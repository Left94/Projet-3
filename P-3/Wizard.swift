//
//  Wizard.swift
//  P-3
//
//  Created by vincent  on 02/10/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation




class Wizard : GameCharacter {
    
    var hpPoints: Int {            // return hp points from the damage points of the weapon
        if let used = weapon {
            return used.healingPoints!
        }else{
            return 0
        }
    }
    
    override init () {
        super.init()
        id = 4
        healthPoints = 70                   //life points
        healthPoints = healthPoints        //life points staying
        
    }
    
    override func attack(target : GameCharacter) {      //game character selected received damage from weapon
        print("Wizard cannot attack, you lost your turn 😝")
    }
    
    func heal(target : GameCharacter) {      //game character selected received health from weapon
        print("\(self.name) decided to Heal \(target.name) ")
        
        target.healthPoints -= self.hitPoints
    }
    
}
