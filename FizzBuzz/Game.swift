//
//  Game.swift
//  FizzBuzz
//
//  Created by Hilton Pintor Bezerra Leite on 23/12/16.
//  Copyright © 2016 hpbl. All rights reserved.
//

import UIKit

class Game: NSObject {
    var score: Int
    let brain: Brain
    
    override init() {
        self.score = 0
        self.brain = Brain()
        super.init()
    }
    
    func play(_ move: String) -> Bool {
        let result = self.brain.check(self.score + 1)
        
        if result == move {
            self.score += 1
            return true
        } else {
            return false
        }
    }
    
}
