//
//  CarTests.swift
//  TravisCIDemoTests
//
//  Created by Bhuvan Bhatt on 29/11/2017.
//  Copyright © 2017 InhanceTechnology. All rights reserved.
//

import XCTest
@testable import TravisCIDemo

class CarTests: XCTestCase {
    
    var ferrari: Car!
    var jeep: Car!
    var honda: Car!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        ferrari = Car(type: .Sport, transmissionMode: .Drive)
        jeep = Car(type: .OffRoad, transmissionMode: .Drive)
        honda = Car(type: .Economy, transmissionMode: .Park)
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        ferrari = nil
        jeep = nil
        honda = nil
    }
    
    
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testSportFasterThanJeep() {
        let minutes = 60
        
        // 1 start ferrari
        ferrari.start(minutes: minutes)
        
        // 2 start jeep
        jeep.start(minutes: minutes)
        
        // Test it
        XCTAssertTrue(ferrari.miles > jeep.miles)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
