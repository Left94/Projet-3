//
//  Dwarf.swift
//  P-3
//
//  Created by vincent  on 02/10/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation




class Dwarf : GameCharacter {
    
    override init() {
        super.init()
        weapon = Axe()                    //weapon class
        id = 1                            //unique ID
        healthPoints = 50                 //life points
        maxHP = healthPoints              //maximum life points
    }
}
