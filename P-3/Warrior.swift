//
//  Warrior.swift
//  P-3
//
//  Created by vincent  on 02/10/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation




class Warrior : GameCharacter {
    
    override init () {
        super.init()
        id = 3
        type = GameCharacterRace.Warrior  //character' s race
        healthPoints = 90                 //life point
        stayingHealth = healthPoints      //life point staying
        
    }
    
    
    
}
