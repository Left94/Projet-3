//
//  Game.swift
//  P-3
//
//  Created by vincent  on 27/09/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation




class Game {
    
    

    // VARIABLES
    
    var player1 = Player(playerId: 1)
    var player2 = Player(playerId: 2)

    
    
    
    // METHODS
    
    // Method to print a message if player doesn t want to play again
    func stopToPLay(){
        print()
        print("Thank you, maybe next time")
    }
    
    // Method to start a new game
    func startNewGame()-> Bool{
        var inputType : Bool?
        var wantToPlay : Bool?
        print("""
        🎲 Would you like to start to play ? 🎲
        Enter a number between 1️⃣ and 2️⃣: 💬
        1️⃣ ➡️ Yes, lets play !
        2️⃣ ➡️ No thanks, I am done...
        💬....
        💬..
        """)
    repeat{
            inputType = true
            let input = readLine()!
            if let choice = Int(input){
                switch choice {
                    case 1 :
                    wantToPlay = true
                    case 2 :
                    wantToPlay = false
                    
            default:
                print("""
                ❌ Please enter a valid number between 1️⃣ and 2️⃣ ! ❌
                💬....
                💬..
                """)
                    inputType = false
            }
            }else{
                print("""
                ❌ Please enter a valid number between 1️⃣ and 2️⃣ ! ❌
                💬....
                💬..
                """)
                    inputType = false
            }
    }while !inputType!
            return wantToPlay!
    }
    
    // Method to describe the game to the player
    func describeGame() {
        print("""
        ⚠️ How the Game works ⚠️
        This game is composed of two players, each player have to compose his own team by selected 3 game characters in a list of 4 characters
        The first one who kill all the others player' s team win the game.
        One rule : kill em all !! ☠️
        """)

    }
    
    // Method to run a game
    func initGame() {
        //Player 1's turn to compose his own team
        player1.createTeam(enemy : player2)
        player1.teamDisplay()
    
        //Player 2's turn to compose his own team
        player2.createTeam(enemy: player1)
        player2.teamDisplay()
    
    
        while player1.playerAlive == true && player2.playerAlive == true{
        
        
            if player2.playerAlive == true{
                //inform player 1 to do an action
                player1.playerTurnDisplay(playerId: 1)
                player1.fight(enemy: player2)
        
            }else {
                break
            }
            if player1.playerAlive == true {
                //Inform player 2 to do an action
                player2.playerTurnDisplay(playerId: 2)
                player2.fight(enemy: player1)
        
            }else {
            break
            }
        }
    }
}
