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
        weapon = Hammer()
        id = 2
        healthPoints = 130    //life point
        
    }
}
