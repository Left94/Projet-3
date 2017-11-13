//
//  Giant.swift
//  P-3
//
//  Created by vincent  on 02/10/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation




class Giant : GameCharacter {
    
    override init() {
        super.init()
        weapon = Hammer()     //weapon class
        id = 2                //unique ID
        healthPoints = 130    //life point
        maxHP = healthPoints  //maximum life points
    }
}
