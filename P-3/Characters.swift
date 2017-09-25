//
//  Characters.swift
//  
//
//  Created by vincent  on 25/09/2017.
//
//

import Foundation


//==============================================================
// Character class                                           ||
//==============================================================

class Character {
    
    var race: Race
    var strenght: Strenght
    var life: Int
    var restoreHealth : Recovery
    var name: String
    
    init(race: Race, name: String, strenght: Strenght, restoreHealth: Recovery ) {
        self.race = race
        self.strenght  = strenght
        self.name = name
        self.restoreHealth = restoreHealth
        
//==============================================================
//Race's health status at the start                           ||
//==============================================================
        
        switch self.race {
            
        case.warrior :
            self.life = 100
            
        case.wizard :
            self.life = 80
            
        case.giant :
            self.life = 200
            
        case.dwarf :
            self.life = 50
            
            
        }
    
    
    
    }
    
 
//==============================================================
//Character ' actions in game                                 ||
//==============================================================
   

    func attack () {
        
    }
    
    
    
    func heal () {
        
    }
    
    
    
    
    func health () {
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
