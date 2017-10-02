//
//  gameCharacterWizard.swift
//  P-3
//
//  Created by vincent  on 02/10/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation



class GameCharacterWizard {
    
    var name : String
    var life : Int
    var weapon : RecoveryWeapon
    
    init (name : String , life : Int , weapon : RecoveryWeapon) {
        self.name = name
        self.life = life
        self.weapon = weapon
    }
}
var wizard = GameCharacterWizard(name: "wizard", life: 50, weapon: wizardWeapon)
