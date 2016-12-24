//
//  ViewControllerUnitTests.swift
//  FizzBuzz
//
//  Created by Hilton Pintor Bezerra Leite on 23/12/16.
//  Copyright © 2016 hpbl. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ViewControllerUnitTests: XCTestCase {
    var viewController: ViewController?
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        self.viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as? ViewController
        UIApplication.shared.keyWindow?.rootViewController = viewController
        
        //needed to load the view
        XCTAssertNotNil(self.viewController?.view)
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    //MARK: - Game tests
    func testHasAGame() {
        XCTAssertNotNil(self.viewController?.game)
    }
    
    
    //MARK: - Moves Tests
    func testMove1IncrementsScore() {
        self.viewController?.play("1")
        let newScore = self.viewController?.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    func testMove2IncrementsScroe() {
        self.viewController?.play("1")
        self.viewController?.play("2")
        let newScore = self.viewController?.gameScore
        XCTAssertEqual(newScore, 2)
    }
    
    
    //MARK: Fizz Tests
    func testFizzIncrementScore() {
        self.viewController?.game?.score = 2
        self.viewController?.play("Fizz")
        let newScore = self.viewController?.gameScore
        XCTAssertEqual(newScore, 3)
    }
    
    func testWrongFizzDoesntIncrementScore() {
        self.viewController?.game?.score = 1
        self.viewController?.play("Fizz")
        let newScore = self.viewController?.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    
    //MARK: Buzz Tests
    func testBuzzIncrementsScore() {
        self.viewController?.game?.score = 4
        self.viewController?.play("Buzz")
        let newScore = self.viewController?.gameScore
        XCTAssertEqual(newScore, 5)
    }
    
    func testWrongBuzzDoesntIncrementScore() {
        self.viewController?.game?.score = 1
        self.viewController?.play("Buzz")
        let newScore = self.viewController?.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    
    //MARK: FizzBuzz Tests
    func testFizzBuzzIncrementsScore() {
        self.viewController?.game?.score = 14
        self.viewController?.play("FizzBuzz")
        let newScore = self.viewController?.gameScore
        XCTAssertEqual(newScore, 15)
    }
    
    func testWrongFizzBuzzDoesntIncrementScore() {
        self.viewController?.game?.score = 1
        self.viewController?.play("FizzBuzz")
        let newScore = self.viewController?.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
}
