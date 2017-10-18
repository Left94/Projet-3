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

func initGame() {
    
    player1.createTeam(enemy : player2)
    player1.teamDisplay()
    
    
    player2.createTeam(enemy: player1)
    player2.teamDisplay()
    print("Team Player 1 is: \(player1.teamMembers)")
    print("team Player 2 is: \(player2.teamMembers)")
}
    
}
