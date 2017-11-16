//
//  Wizard.swift
//  P-3
//
//  Created by vincent  on 02/10/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation




class Wizard : GameCharacter {
    
   
    
    override init () {
        super.init()
        weapon = Stick()      //weapon class
        id = 4                //unique ID
        healthPoints = 60     //life points
        maxHP = healthPoints  //maximum life points
        
        
    }
  
//METHODS
    
    override func attack(target : GameCharacter) {
        
        //game character selected received damage from weapon
        print("Wizard cannot attack, you lost your turn 😝")
    }
    
    func heal(target : GameCharacter) {
        
        //game character selected received health from weapon
        print("\(self.name) decided to Heal \(target.name) ")
        target.healthPoints += self.weapon!.healingPoints
        if let weapon = self.weapon as? Stick {
            print("\(self.name) heal with \(weapon.name)")
        }
        print("\(target.name) recovered \(self.weapon!.healingPoints) HP")
        print("\(target.name) has now \(target.healthPoints) HP")
    }
}
