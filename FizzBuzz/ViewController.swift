//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Hilton Pintor Bezerra Leite on 23/12/16.
//  Copyright © 2016 hpbl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var game: Game?
    var gameScore: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.game = Game()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    //MARK: - Game functions
    func play(_ move: String) {
        guard let unwrappedGame = game else {
            print("Game has not been initialized")
            return
        }
        let newScore = unwrappedGame.play(move)
        
        self.gameScore = newScore.score
    }
    
}

