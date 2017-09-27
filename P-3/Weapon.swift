//
//  Weapon.swift
//  P-3
//
//  Created by vincent  on 27/09/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation





class Weapon {
    
    var name : String
    var dammage : Int
    
    init ( name : String , dammage : Int ) {
        
        self.name = name
        self.dammage = dammage
        
    }
}
var warriorWeapon = Weapon(name: "Stone Axe", dammage: 55)
var dwarfWeapon = Weapon(name: "Bone Axe", dammage: 75)
var giantWeapon = Weapon(name: "Hammer", dammage: 45)

