//
//  main.swift
//  P-3
//
//  Created by vincent  on 25/09/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation


print("Welcome Player 1 !!")




print("What is your name?")
var player1 = Players()
player1.playerName = readLine()!
player1.welcome()


print("Now, create your team, Choose your first character in the list below"
    + "\n1. Dwarf"
    + "\n2. Giant"
    + "\n3. Warrior"
    + "\n4. Wizard")
var team1 = Team()
team1.selectYourFirstCharacter()
team1.nameYourFirstCharacter()

