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


class ConverterTests1: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    
    
    
    // this works , but has issues !
    func testFahrenheitToCelsius(){
        
        //Given
        let sut = Converter()
        // sut != Sharif University of Technology
        // sut = system under test !
        let input1 = 32.0
        let input2 = 212.0
        
        //When
        let output1 = sut.convertToCelsius(fahrenheit : input1)
        let output2 = sut.convertToCelsius(fahrenheit : input2)
        
        //Then
        XCTAssertEqual(output1 , 0 , "Celsius")
        XCTAssertEqual(output2 , 100 , "Celsius")
    }

    // what if the functions we're calling in the test , changed the state of the system ? and thus resulting in a false test result ! it's better if we separate the tests like this :
    //+ the name is rather ambiguous
    
    
    // these 2 funcs below are better !
    
    func test32FahrenheitIs0Celsius(){
        let sut = Converter()
        let input = 32.0
        
        let celsius = sut.convertToCelsius(fahrenheit: input)
        
        XCTAssertEqual(celsius , 0 , "Celsius")
    }
    
    func test212FahrenheitIs100Celsius(){
        let sut = Converter()
        let input = 212.0
        
        let celsius = sut.convertToCelsius(fahrenheit: input)
        
        XCTAssertEqual(celsius , 100 , "Celsius")
    }
    
    
}
