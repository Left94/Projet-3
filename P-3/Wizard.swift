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
        
      type = GameCharacterRace.wizard     //character' race
      healthPoints = 70                   //life points
      stayingHealth = healthPoints        //life points staying
        
    }
    
    func health (target : GameCharacter) {//game character selected received healing pts from weapon
        target.recoverHP(hp: self.weapon!.healingPoints!)
        
    }
    
}
