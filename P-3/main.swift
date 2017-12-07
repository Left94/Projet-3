//
//  main.swift
//  P-3
//
//  Created by vincent  on 25/09/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation


var startProgram = true


print()
// Game' s loop
while startProgram {
        let play = Game()
        play.describeGame()
        play.initGame()
        startProgram = play.startNewGame()
    
    if !startProgram {
        play.stopToPLay()
    
    }
}





