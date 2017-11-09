//
//  Sword.swift
//  P-3
//
//  Created by vincent  on 02/10/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation




class Sword : Weapon {
    
    var name = "Sword"
        
    override init() {
            super.init()
            damagePoints = 50
            type = .DamagingWeapon
        
        
    }
    
}
