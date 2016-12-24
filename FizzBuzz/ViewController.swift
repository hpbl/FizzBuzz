 //
//  ViewController.swift
//  FizzBuzz
//
//  Created by Hilton Pintor Bezerra Leite on 23/12/16.
//  Copyright © 2016 hpbl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    
    //MARK: - Properties
    var game: Game?
    var gameScore: Int? {
        didSet {
            guard let unwrappedScore = self.gameScore else {
                print("Couldn't unwrap new game score")
                return
            }
            self.numberButton.setTitle("\(unwrappedScore)", for: .normal)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.game = Game()
        guard let unwrappedGame = self.game else {
            print("Couldn't initialize game")
            return
        }
        
        self.gameScore = unwrappedGame.score
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: - Actions
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        switch sender {
        case self.numberButton:
            self.play(Move.Number)
            break
            
        case self.fizzButton:
            self.play(Move.Fizz)
            break
            
        case self.buzzButton:
            self.play(Move.Buzz)
            break
            
        default:
            self.play(Move.FizzBuzz)
            break
        }
    }

    //MARK: - Game functions
    func play(_ move: Move) {
        guard let unwrappedGame = game else {
            print("Game has not been initialized")
            return
        }
        let newScore = unwrappedGame.play(move)
        
        self.gameScore = newScore.score
    }
    
}

