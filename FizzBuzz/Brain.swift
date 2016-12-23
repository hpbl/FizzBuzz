//
//  Brain.swift
//  FizzBuzz
//
//  Created by Hilton Pintor Bezerra Leite on 23/12/16.
//  Copyright © 2016 hpbl. All rights reserved.
//

import UIKit

class Brain: NSObject {
    
    //MARK: - Maths
    func isDivisibleByThree(_ number: Int) -> Bool {
        return isDivisibleBy(divisor: 3, number: number)
    }
    
    func isDivisibleByFive(_ number: Int) -> Bool {
        return isDivisibleBy(divisor: 5, number: number)
    }

    func isDivisibleByFifteen(_ number: Int) -> Bool {
        return isDivisibleBy(divisor: 15, number: number)
    }
    
    func isDivisibleBy(divisor: Int, number: Int) -> Bool {
        return number % divisor == 0
    }
    
    
    //MARK: - Checks
    func check(_ number: Int) -> String {
        if isDivisibleByFifteen(number) {
            return "FizzBuzz"
        } else if isDivisibleByThree(number) {
            return "Fizz"
        } else if isDivisibleByFive(number){
            return "Buzz"
        } else {
            return "\(number)"
        }
    }
}
