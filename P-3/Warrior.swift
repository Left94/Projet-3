//
//  Warrior.swift
//  P-3
//
//  Created by vincent  on 02/10/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation




class Warrior : GameCharacter {
    
    override init() {
        super.init()
        weapon = Sword()      //weapon class
        id = 3                //unique id
        healthPoints = 100    //life point
        maxHP = healthPoints  //maximum life points
    }
}
