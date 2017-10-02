//
//  Weapon.swift
//  P-3
//
//  Created by vincent  on 27/09/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation





class Weapon {
    
    enum WeaponType {
        
        case HealingWeapon      //weapon' s type
        case DamagingWeapon
    
    }
    
    var damagePoints : Int?     //weapon' s stat
    var healingPoints : Int?
    var type : WeaponType?
}

