//
//  main.swift
//  P-3
//
//  Created by vincent  on 25/09/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation
var player1 = Player(playerId : 1)
var player2 = Player(playerId: 2)

print("Welcome Player 1!")

player1.createTeam()



print("Welcome Player 2!")

player2.createTeam()

player1.generateTheTeam()
player2.generateTheTeam()
