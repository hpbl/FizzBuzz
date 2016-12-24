//
//  ViewControllerUITests.swift
//  FizzBuzz
//
//  Created by Hilton Pintor Bezerra Leite on 23/12/16.
//  Copyright © 2016 hpbl. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ViewControllerUITests: XCTestCase {
    var application: XCUIApplication?
    var buttons: XCUIElementQuery?
    var numberButton: XCUIElement?
    var fizzButton: XCUIElement?
    var buzzButton: XCUIElement?
    var fizzBuzzButton: XCUIElement?

    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
        
        self.application = XCUIApplication()
        self.buttons = self.application?.buttons
        self.numberButton = self.buttons?["numberButton"]
        self.fizzButton = self.buttons?["fizzButton"]
        self.buzzButton = self.buttons?["buzzButton"]
        self.fizzBuzzButton = self.buttons?["fizzBuzzButton"]
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    //MARK: - NumberButton Tests
    func testTapNumberButtonIncrementsScore() {
        self.numberButton?.tap()
        let newScore = self.numberButton?.label
        XCTAssertEqual(newScore, "1")
    }
    
    func testTapNumberButtonTwiceIncrementsScore() {
        self.numberButton?.tap()
        self.numberButton?.tap()
        let newScore = self.numberButton?.label
        XCTAssertEqual(newScore, "2")
    }
    
    
    //MARK: - FizzButton Tests
    func testTapFizzButtonIncrementsScoreTo3() {
        self.numberButton?.tap()
        self.numberButton?.tap()
        self.fizzButton?.tap()
        let newScore = self.numberButton?.label
        XCTAssertEqual(newScore, "3")
    }
    
    
    //MARK: - BuzzButton Tests
    func testTapBuzzButtonIncrementsScoreTo5() {
        self.numberButton?.tap()
        self.numberButton?.tap()
        self.fizzButton?.tap()
        self.numberButton?.tap()
        self.buzzButton?.tap()
        let newScore = self.numberButton?.label
        XCTAssertEqual(newScore, "5")
    }
    
    
    //MARK: - FizzBuzzButton Tests
    func testTapFizzBuzzButtonIncrementsScoreTo15() {
        self.playTo14()
        self.buttons?["fizzBuzzButton"].tap()
        let newScore = self.numberButton?.label
        XCTAssertEqual(newScore, "15")
    }
    
    
    //MARK: - Auxiliar functions
    func playTo14() {
        self.numberButton?.tap()
        self.numberButton?.tap()
        self.fizzButton?.tap()
        self.numberButton?.tap()
        self.buzzButton?.tap()
        self.fizzButton?.tap()
        self.numberButton?.tap()
        self.numberButton?.tap()
        self.fizzButton?.tap()
        self.buzzButton?.tap()
        self.numberButton?.tap()
        self.fizzButton?.tap()
        self.numberButton?.tap()
        self.numberButton?.tap()
    }
}
