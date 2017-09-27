//
//  charactersTeam.swift
//  P-3
//
//  Created by vincent  on 25/09/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation

//=========================
//Teammate' s Options    ||
//=========================


class Team {
    
    var teamCharacters = [Race.dwarf, Race.giant, Race.warrior, Race.wizard]
    
    
    func selectYourFirstCharacter(){
        if let choice = readLine() {
            switch choice {
            case "1":
                teamCharacters = [Race.dwarf]
                print("Rename your Dwarf")
            case "2":
                teamCharacters = [Race.giant]
                print("Rename your Giant")
            case "3":
                teamCharacters = [Race.warrior]
                print("Rename your Warrior")
            case "4" :
                teamCharacters = [Race.wizard]
                print("Rename your Wizard")
                
            default:
                print("")
            }
            
        }
        
    }
    
    
    
    
    func selectYourSecondCharacter(){
        
 }
    
    
    
    
    func selectYourThirdCharacter(){
        
 }
    func nameYourFirstCharacter() {
        if let charactersName1 = readLine(){
            print("\(charactersName1) is ready to fight !")
        }
        
    }
    
    func nameYourSecondCharacter() {
        if let charactersName2 = readLine(){
            print("\(charactersName2) is ready to fight !")
        }
        
        
    }
    
    func nameYourThirdCharacter() {
        if let charactersName3 = readLine(){
            print("\(charactersName3) is ready to fight !")
            
        }
        
}

}
