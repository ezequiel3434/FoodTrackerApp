//
//  FoodTrackerAppTests.swift
//  FoodTrackerAppTests
//
//  Created by Ezequiel Parada Beltran on 21/07/2020.
//  Copyright © 2020 Ezequiel Parada. All rights reserved.
//

import XCTest
@testable import FoodTrackerApp

class FoodTrackerAppTests: XCTestCase {

    //MARK: Meal Class tests
    
    // Confirm that the Meal Initializer returns a Meal object when passed valid parameters
    func testMealInitializationSucceeds() {
        // zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        
        // Highest positive rating
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    
    // Confirm that the Meal initializer returns nil when passed a negative rating or an empty name
    func testMealInitializationFails() {
        // Negative ratings
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        //Rating exceeds maximum
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
        
        
        
        // Empty String
        
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
    }

}
