//
//  Dwarf.swift
//  P-3
//
//  Created by vincent  on 02/10/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation




class Dwarf : GameCharacter {
    
    override init () {
        super.init()
        
        type = GameCharacterRace.Dwarf    //character' s race
        healthPoints = 50                 //life points
        stayingHealth = healthPoints      //life points staying
        
    }
    
    
    
}
