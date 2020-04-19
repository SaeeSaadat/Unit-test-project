//
//  Unit_test_projectTests.swift
//  Unit test projectTests
//
//  Created by Saee Saadat on 4/20/20.
//  Copyright © 2020 Saee Saadat. All rights reserved.
//

import XCTest
@testable import Unit_test_project

class Unit_test_projectTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testHaterStartsNicely(){
        let hater = Hater()
        XCTAssertFalse(hater.hating)
    }
    
    func testHaterAfterBadDay(){
        var hater = Hater()
        hater.hadABadDay()
        XCTAssert(hater.hating)
    }
    
    func testHaterAfterGoodDay(){
        var hater = Hater()
        hater.hadAGoodDay()
        XCTAssertFalse(hater.hating)
    }
    
    
}
