//
//  Player.swift
//  P-3
//
//  Created by vincent  on 27/09/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation








class Player {
    
    // VARIABLES
    
    var teamMembers : [GameCharacter] = []
    var playerId : Int?
    var playerAlive = true
    
    // INITIALIZERS
    
    init(playerId : Int  ) {
        self.playerId = playerId
    }
    
    
    // METHODS
    
   
    // Method to check if the team still has life characters
    func teamIsAlive( player : Player )-> Bool {
        
        var teamIsUp = false
        
        for _ in teamMembers {
            teamIsUp = true
        }
        return teamIsUp
    }
    
    
    
    // Method to see if the input name of the game character already exist
    func nameAlreadyExist( equal name : String , enemyTeam :[GameCharacter])-> Bool {
        var alreadyExist = false
        for gameCharacterExist in enemyTeam {
            if name.lowercased() == gameCharacterExist.name.lowercased() {
                alreadyExist = true
            }
        }
        for gameCharacterExist in teamMembers {
            if name.lowercased() == gameCharacterExist.name.lowercased() {
                alreadyExist = true
            }
        }
        return alreadyExist
    }
    
    // Method to select the game characters for the team player
    func chooseGameCharacter (enemy : Player) {
        print()
        print("""
        Player \(playerId!), please select your team's character : 🗡 🔨 💉 🔪
        Enter a number between 1️⃣ and 4️⃣ :
        1️⃣ ➡️ Dwarf   ➡️  ➡️ Weapon: Axe,    Damage:  35   ⚔️   ➡️ Health: 70pts  ❣️
        2️⃣ ➡️ Giant   ➡️  ➡️ Weapon: Hammer, Damage:  50   ⚔️   ➡️ Health: 120pts ❣️
        3️⃣ ➡️ Warrior ➡️  ➡️ Weapon: Sword,  Damage:  45   ⚔️   ➡️ Health: 100pts  ❣️
        4️⃣ ➡️ Wizard  ➡️  ➡️ Weapon: Stick,  Recover: 20   💉   ➡️ Health: 60pts  ❣️
        """ )
        
        
        var newCharacter = GameCharacter()
        var inputType : Bool?
        var inputName : Bool
        
        
        // Player has to selected his member' s team
        repeat {
            inputType = true
            if let choice = readLine(){
                switch choice {
                case "1" :
                    newCharacter = Dwarf()
                    print("Player \(playerId!) selected Dwarf ✅")
                case "2" :
                    newCharacter = Giant()
                    print("Player \(playerId!) selected Giant ✅")
                case "3" :
                    newCharacter = Warrior()
                    print("Player \(playerId!) selected Warrior ✅")
                case "4" :
                    newCharacter = Wizard()
                    print("Player \(playerId!) selected Wizard ✅")
                default:
                    inputType = false
                    print("""
                    Choice is wrong, please select a number between 1 and 4 ❌
                    💬....
                    💬..
                    """)
                    
                }
            }
        } while !inputType!
        print("""
        Player \(playerId!) , give a name to your character : 💬
        💬....
        💬..
        """)
        
        
        // Player has to rename his selected game character
        repeat {
            inputName = true
            newCharacter.name = readLine()!
            
            // Call of the method nameAlreadyExist() to see if the name is unique
            if nameAlreadyExist( equal : newCharacter.name, enemyTeam: enemy.teamMembers ) || newCharacter.name.isEmpty    {
                inputName = false
                print("""
                Please enter a no-empty name who hasn t already used: ❌
                💬...
                💬..
                """)
            }
            
        }while !inputName
        
        
        // Add the new character to the array teamMembers
        teamMembers.append(newCharacter)
        print()
        print("\(newCharacter.name)  joined the team ❗️ ")
    }
    // Method to repeat and add new game character in the team members list 3 times
    func createTeam (enemy : Player) {
        
        
        for _ in 0...2 {
            chooseGameCharacter(enemy : enemy )
        }
    }
    
    // Method to list all the renamed game characters with their own type (dwarf, giant, wizard, warrior) in the created team to inform the player
    func teamDisplay() {
        
        
        print(" 👊 Player \(playerId!), this is your team : 👊")
        for renamed in teamMembers {
            print("\(renamed.name) ready to fight ‼️ ")
        }
    }
    
    // Method to inform the player' s turn to play
    func playerTurnDisplay(playerId : Int) {
        print()
        print("Player \(playerId), this is your turn to play! 🎲 🎲")
        
    }
    
    // Method to select a game Character from player' s list to do an action with it
    func selectGameCharacter()-> GameCharacter {
        
        
        
        var characterSelected : GameCharacter?
        var inputType : Bool
        
        print("""
        Please enter a number to select a character 1️⃣ 2️⃣ 3️⃣.....: 💬
        💬....
        💬..
        """)
        print()
        // we only show the game characters till in game with a dynamic loop
        for (index, element) in teamMembers.enumerated() {
            
            if element.healthPoints <= 20 {
                print(index + 1, ":", element.name,"which is on FIRE 🔥 count", element.healthPoints, "HP ❣️ and can know use CRITICAL HIT !  🌪🔥 ")
            }else{
                print(index + 1, ":", element.name,"which count", element.healthPoints,"HP ❣️")
            }
        }
        
        repeat {
            if let choice = Int(readLine()!) {
                // Array indexes begin at 0
                let index = choice - 1
                if teamMembers.indices.contains(index) {
                    characterSelected = teamMembers[index]
                    // we create an unique Id per game character equal to the index
                    characterSelected!.id = index
                    inputType = true
                    if characterSelected is Wizard{
                        print("""
                        You selected \(teamMembers[index].name) ! ✅
                        \(teamMembers[index].name) can heal with  \(teamMembers[index].weapon!.healingPoints) heal points 💉
                        \(teamMembers[index].name) have \(teamMembers[index].healthPoints) HP ❣️
                        """)
                        
                    }else{
                        if teamMembers[index].healthPoints <= 20{
                            print("""
                            You selected \(teamMembers[index].name) wich is on FIRE 🔥 ! ✅
                            \(teamMembers[index].name) can now use Critical Attack 🌪  with \(teamMembers[index].weapon!.damagePoints * 1.5) pts of power ⚔️
                            """)
                            
                        }else{
                            print("""
                            You selected \(teamMembers[index].name) ! ✅
                            \(teamMembers[index].name) can attack with \(teamMembers[index].weapon!.damagePoints) pts of power ⚔️
                            \(teamMembers[index].name) have \(teamMembers[index].healthPoints) HP ❣️
                            """)
                        }
                    }
                    
                }else{
                    inputType = false
                    print("""
                    Select an available character ❌
                    💬....
                    💬..
                    """)
                
                }
            }else{
                inputType = false
                print("""
                Select an available character ❌
                💬....
                💬..
                """)
            }
            
            
            
        } while !inputType
        return characterSelected!
    }
    
    // Method to engage the fight
    func fight (enemy : Player) {
        
        // Call of the method teamIsAlive() to be sure that we still have gameCharacters alive to be selected
        if teamIsAlive(player: self)  {
            
            // Ask the player to select one of his own characters to do an action
            let characterSelected = selectGameCharacter()
            let randomNumber = arc4random_uniform(100)
            
            // we want 30 % of chance to popup a chest with a new weapon inside
            // if generated number is between 0 and 30 the chest popup and the game character will equip a new weapon
            if randomNumber < 30 {
                characterSelected.openChest()
            }
            
            // if the character selected is wizard we ask to select a game character to heal
            if let wizard = characterSelected as? Wizard{
                
                print("Select a character to heal in your team  💉 : ")
                let ownCharacterSelected = selectGameCharacter()
                wizard.heal(target: ownCharacterSelected)
                
                // else if the character selected is another one else exept wizard then ....
            }else{
                // ...we ask player to choose a target in player' s 2 team to attack
                print("Select a character to attack in the opponent team 🎯 :")
                
                
                
                // we call tealIsAlive method to see if there is at least one character alive in the opponent's team
                if teamIsAlive(player: enemy)  {
                    let characterToAttack = enemy.selectGameCharacter()
                    
                    // we call the attack method to hit the selected character in the opponent' s team
                    characterSelected.attack(target: characterToAttack)
                    if characterToAttack.healthPoints == 0 || characterToAttack.healthPoints < 0{
                        print()
                        // we use the unique game character's Id which is an int equal to his own index
                        let characterToRemove = characterToAttack.id
                        enemy.teamMembers.remove(at: characterToRemove)
                        if enemy.teamMembers .isEmpty{
                            playerAlive = false
                            print("""
                            Congratulation Player \(String(describing: self.playerId!)) 👏👏 You Win ‼️
                            ❌ Game is over ❌
                                
                            """)
                        } 
                    }
                }
            }
        }
    }
}

