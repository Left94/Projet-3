//
//  Stick.swift
//  P-3
//
//  Created by vincent  on 02/10/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation




class Stick: Weapon {
    
    var name = "Stick"
    
    override init() {
        
        super.init()
        healingPoints = 20
        type = .HealingWeapon
        
        
    }
        
}
    
    

