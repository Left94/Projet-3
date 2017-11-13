//
//  Hammer.swift
//  P-3
//
//  Created by vincent  on 03/10/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation




class Hammer : Weapon {
    
    var name = "✨IRON HAMMER✨"
    
    override init() {
        super.init()
        damagePoints = 50           //damages from weapon
        type = .DamagingWeapon      //type of weapon
    }
}
    
    

