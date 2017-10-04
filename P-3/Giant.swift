//
//  Giant.swift
//  P-3
//
//  Created by vincent  on 02/10/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation




class Giant : GameCharacter {
    
    override init () {
        super.init()
        
        type = GameCharacterRace.Giant  //character' s race
        healthPoints = 130              //life point
        stayingHealth = healthPoints    //life point staying
        
    }
    
    
    
}
