//
//  recoveryWeapon.swift
//  P-3
//
//  Created by vincent  on 02/10/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation




class RecoveryWeapon {
    
    var healthToUp : Int
    var name : String
    
    init (healthToUp : Int , name : String) {
     self.healthToUp = healthToUp
     self.name = name
    }
}


var wizardWeapon = RecoveryWeapon( healthToUp: 20, name : "Recovery stick")
