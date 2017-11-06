//
//  Wizard.swift
//  P-3
//
//  Created by vincent  on 02/10/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation




class Wizard : GameCharacter {
    
   
    
    override init () {//LA SOLUTION EST ICI
        super.init()
        id = 4
        healthPoints = 70     //life points
        hpPoints = 40
        
        
        
    }
    
    override func attack(target : GameCharacter) {      //game character selected received damage from weapon
        print("Wizard cannot attack, you lost your turn 😝")
    }
    
    func heal(target : GameCharacter) {      //game character selected received health from weapon
        print("\(self.name) decided to Heal \(target.name) ")
        target.healthPoints += self.hpPoints
        print("\(target.name) recovered \(self.hpPoints) HP")
        print("\(target.name) has now \(target.healthPoints) HP")    }
    
}
