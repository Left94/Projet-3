//
//  Game.swift
//  P-3
//
//  Created by vincent  on 27/09/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation




class Game {
    
    

    
var player1 = Player(playerId: 1)
var player2 = Player(playerId: 2)

    
// Method to start a new game
    func stopToPLay(){
        print("Thanks it was a pleasure to play with you!")
    }
    
    func startNewGame()-> Bool{
        var inputType = false
        print("Would you like to start to play?")
        print("Enter a number between 1 and 2: 💬 ")
        print("1️⃣ ➡️ Yes lets play again !" )
        print("2️⃣ ➡️ No thanks, I am done... " )
        repeat {
            
            if let choice = readLine(){
                switch choice {
                    case "1" :
                    inputType = true
                    
                case "2" :
                    inputType = false
                    stopGame.stopToPLay()
                    
                    
            default:
                inputType = false
                print("Please choose a valid number")
            }
        }
    }while !inputType
      return inputType

    }
    
// Method to describe the game to the player
func describeGame() {
    print(" ⚠️ How the Game works ⚠️ ")
    print()
    print("This game is composed of two players, each player have to compose his own team by selected 3 game characters in a list of 4 characters")
    print("The first one who kill all the others player' s team win the game.")
    print()
    print("One rule : kill em all !! ☠️ ")
    print()
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
