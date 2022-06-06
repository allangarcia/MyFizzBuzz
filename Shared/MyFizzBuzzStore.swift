//
//  MyFizzBuzzStore.swift
//  MyFizzBuzz
//
//  Created by Allan Garcia on 05/06/22.
//

import Foundation

class MyFizzBuzzStore: ObservableObject {
    
    @Published var myFizzBuzz = MyFizzBuzz()
    
    // MARK: - Properties
    
    var fizzBuzzArrayString: [String] {
        myFizzBuzz.resultArrayOfStrings
    }
    
    // MARK: - Intent
    
    func executeFizzBuzz(upto: Int) {
        myFizzBuzz.executeFizzBuzz(upto: upto)
    }
    
}
