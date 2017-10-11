//
//  Game.swift
//  P-3
//
//  Created by vincent  on 27/09/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation




class Game {
    
    
}
    
var player1 = Player(playerId: 1)
var player2 = Player(playerId: 2)

func initGame() {
    player1.initializePlayers()
    player1.createTeam()
    player1.generateTheTeam()
    
    player2.initializePlayers()
    player1.createTeam()
    player2.generateTheTeam()
}
    
   
