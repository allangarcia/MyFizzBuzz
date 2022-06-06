//
//  MyFizzBuzz.swift
//  MyFizzBuzz
//
//  Created by Allan Garcia on 05/06/22.
//

import Foundation


struct MyFizzBuzzConstants {
    
    static let FIZZBUZZ_CONSTANT = "FizzBuzz"
    static let FIZZ_CONSTANT = "Fizz"
    static let BUZZ_CONSTANT = "Buzz"
    
}


struct MyFizzBuzz {
    
    var resultArrayOfStrings: [String] = []
    
    mutating func executeFizzBuzz(upto: Int) {
        resultArrayOfStrings = (0...upto).map { numerand in
            if numerand.isDivisableByFive() && numerand.isDivisableByThree() {
                return MyFizzBuzzConstants.FIZZBUZZ_CONSTANT
            }
            if numerand.isDivisableByThree() {
                return MyFizzBuzzConstants.FIZZ_CONSTANT
            }
            if numerand.isDivisableByFive() {
                return MyFizzBuzzConstants.BUZZ_CONSTANT
            }
            return numerand.asString()
        }
    }
    
}


extension Int {

    func isDivisableByThree() -> Bool {
        self % 3 == 0 // Fizz
    }

    func isDivisableByFive() -> Bool {
        self % 5 == 0 // Buzz
    }
    
    func asString() -> String {
        String(self)
    }
    
}


extension String: Identifiable {
    
    public var id: Int {
        var hasher = Hasher()
        hasher.combine(self)
        return hasher.finalize()
    }
    
}
