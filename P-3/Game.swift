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
    func startNewGame(){
            print("Would you like to start to play?")
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
