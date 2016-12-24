//
//  GameTests.swift
//  FizzBuzz
//
//  Created by Hilton Pintor Bezerra Leite on 23/12/16.
//  Copyright © 2016 hpbl. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {
    let game = Game()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    //MARK: - Score Tests
    func testGameStartsAtZero() {
        XCTAssertTrue(self.game.score == 0)
    }
    
    func testOnPlayScoreIncrements() {
        let _ = self.game.play("1")
        XCTAssertTrue(self.game.score == 1)
    }
    
    func testIfMoveIsWrongScoreNoteIncremented() {
        self.game.score = 1
        let previousScore = self.game.score
        let _ = self.game.play("Fizz")
        XCTAssertEqual(previousScore, self.game.score)
    }
    
    func testShouldReturnIfMoveRight() {
        let response = self.game.play("1")
        XCTAssertNotNil(response.right)
    }
    
    func playShouldReturnNewScore() {
        let response = self.game.play("1")
        XCTAssertNotNil(response.score)
    }
    
    
    //MARK: - Buzz Tests
    func testIfBuzzMoveIsRight() {
        self.game.score = 4
        let result = self.game.play("Buzz")
        XCTAssertTrue(result.right)
    }
    
    func testIfBuzzIsWrong() {
        self.game.score = 1
        let result = self.game.play("Buzz")
        XCTAssertFalse(result.right)
    }
    
    
    //MARK: - FizzBuzz Tests
    func testIfFizzBuzzIsRight() {
        self.game.score = 14
        let result = self.game.play("FizzBuzz")
        XCTAssertTrue(result.right)
    }
    
    func testIfFizzBuzzIsWrong() {
        self.game.score = 1
        let result = self.game.play("FizzBuzz")
        XCTAssertFalse(result.right)
    }
    
    
    //MARK: - "Number" Tests
    func testIfNumberIsRight() {
        self.game.score = 0
        let number = 1
        let result = self.game.play("\(number)")
        XCTAssertTrue(result.right)
    }
    
    func testIfNumberIsWrong() {
        self.game.score = 2
        let result = self.game.play("3")
        XCTAssertFalse(result.right)
    }
    
}
