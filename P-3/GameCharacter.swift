//
//  GameCharacter.swift
//  P-3
//
//  Created by vincent  on 27/09/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation





class GameCharacter {
   
    var name : String
    var life : Int
    var weapon : Weapon
    
    init (name : String , life : Int , weapon : Weapon) {
       
        self.name = name
        self.life = life
        self.weapon = weapon
        
    }
    
    
    func attack (target : GameCharacter) {
        
    }
    
    
}
