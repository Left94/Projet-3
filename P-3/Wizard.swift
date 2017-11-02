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
       id = 4
      type = GameCharacterRace.Wizard     //character' race
      healthPoints = 70                   //life points
      stayingHealth = healthPoints        //life points staying
        
    }
    
    
    
}
