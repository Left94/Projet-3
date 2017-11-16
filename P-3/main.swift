//
//  main.swift
//  P-3
//
//  Created by vincent  on 25/09/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation

var play = Game()
var stopGame = Game()
var stopProgramm = false



print()
// Game' s loop
while stopProgramm == false {
    if play.startNewGame() == true{
        repeat {
            play.describeGame()
            play.initGame()
        }while !play.startNewGame()
    }else{
        play.stopToPLay()
        stopProgramm = false
    }
}





