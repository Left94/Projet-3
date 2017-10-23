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
    
    
    
// func to describe the game to the player
func describeGame() {
    print("How the Game works")
    print()
    print("This game is composed of two players, each player have to compose his own team by selected 3 game character in a list of 4 characters")
    print("The first one who kill all the others player' s team win the game.")
    print()
    print("One rule : kill em all !!")
    print()
    }
    
    
func initGame() {
    //Player 1's turn to compose his own team
    player1.createTeam(enemy : player2)
    player1.teamDisplay()
    //Player 2's turn to compose his own team
    //player2.createTeam(enemy: player1)
   // player2.teamDisplay()
    //Inform player 1 to do an action
    player1.playerTurnDisplay(playerId: 1)
    
    player1.fight()
   
    
    }
    
}
