//
//  ConverterTests.swift
//  Unit test projectTests
//
//  Created by Saee Saadat on 4/20/20.
//  Copyright © 2020 Saee Saadat. All rights reserved.
//

import XCTest
// this line has been added manually but it's absolutely critical !
@testable import Unit_test_project
// it allows us to create instances from the project's classes !


class ConverterTests2: XCTestCase {

    var sut : Converter!
    
    
     override class func setUp() {
         print("Hello , I run at the beginning of the whole process only once !")
     }
     
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = Converter()
        print("from the outside")
    }


    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }
    
    override class func tearDown() {
        print("That's all folks ! bye bye !")
    }
    
    
    
    func test32FahrenheitIs0Celsius(){
        let input = 32.0
        
        let celsius = sut.convertToCelsius(fahrenheit: input)
        
        XCTAssertEqual(celsius , 0 , "Celsius")
    }
    
    func test212FahrenheitIs100Celsius(){
        let input = 212.0
        
        let celsius = sut.convertToCelsius(fahrenheit: input)
        
        XCTAssertEqual(celsius , 100 , "Celsius")
    }
    
    
}
