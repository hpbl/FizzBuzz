//
//  BrainTests.swift
//  FizzBuzz
//
//  Created by Hilton Pintor Bezerra Leite on 23/12/16.
//  Copyright © 2016 hpbl. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class BrainTests: XCTestCase {
    let brain = Brain()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    //MARK: - Division Tests
    func testIsDivisibleByThree() {
        let result = self.brain.isDivisibleByThree(3)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByThree() {
        let result = self.brain.isDivisibleByThree(1)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByFive() {
        let result = self.brain.isDivisibleByFive(5)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByFive() {
        let result = self.brain.isDivisibleByFive(1)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByFifteen() {
        let result = self.brain.isDivisibleByFifteen(15)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByFifteen() {
        let result = self.brain.isDivisibleByFifteen(1)
        XCTAssertEqual(result, false)
    }

    
    //MARK: - Game logic Tests
    func testSayFizz() {
        let result = brain.check(3)
        XCTAssertEqual(result, "Fizz")
    }
    
    func testSayBuzz() {
        let result = brain.check(5)
        XCTAssertEqual(result, "Buzz")
    }
    
    func testSayFizzBuzz() {
        let result = brain.check(15)
        XCTAssertEqual(result, "FizzBuzz")
    }
    
    func testSayNumber() {
        let number = 1
        let result = brain.check(number)
        XCTAssertEqual(result, "\(number)")
    }
    
}
