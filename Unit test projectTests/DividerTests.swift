//
//  DividerTests.swift
//  Unit test projectTests
//
//  Created by Saee Saadat on 4/22/20.
//  Copyright © 2020 Saee Saadat. All rights reserved.
//

import XCTest
@testable import Unit_test_project

class DividerTests: XCTestCase {

    var sut : Divider!
    
    override func setUpWithError() throws {
        sut = Divider()
    }

    override func tearDownWithError() throws {

    }

    func test_divider_10by3_shouldGive3and1(){
        //given
        let dividend = 10
        let divisor = 3
        
        //when
        let result = sut.divide(dividend, by: divisor)
        
        //then
        verifyDivision(result: result, expectedQuotient: 3, expectedRemainder: 1)
    }
    
    func test_divider_20by_7_shouldGive2and6(){
        let dividend = 20
        let divisor = 7
        
        let result = sut.divide(dividend, by: divisor)
        
        verifyDivision(result: result, expectedQuotient: 2, expectedRemainder: 6)
    }
    
    
    
    // VERY IMPORTANT
    // using file and line we can show the test failure on the line that is calling this method !!!!! very useful !
    
    func verifyDivision(result: (quotient: Int , remainder : Int) , expectedQuotient: Int , expectedRemainder : Int , file: StaticString = #file , line : UInt = #line){
        
        XCTAssertEqual(result.quotient, expectedQuotient,"Quotient", file : file , line : line)
        XCTAssertEqual(result.remainder, expectedRemainder , "Remainder" , file: file, line: line)
        
    }

}
