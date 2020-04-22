//
//  LifeCycleTests.swift
//  Unit test projectTests
//
//  Created by Saee Saadat on 4/22/20.
//  Copyright © 2020 Saee Saadat. All rights reserved.
//

import XCTest

class LifeCycleTests: XCTestCase {
    
    override class func setUp() {
        // First
        print("In Class SetUp")                 //1
    }
    override class func tearDown() {
           // last
           print("In Class TearDown")           //9
    }
    
    
    override func setUpWithError() throws {
        print("In SetUp")                       //2
    }

    override func tearDownWithError() throws {
        print("In TearDown")                    //8
    }
    
    func testExample(){
        print("StartingTest")                   //3
        
        addTeardownBlock {
            print("In First tearDown block")    //7
            
            // tearDown blocks will be called after the test is finished and before tearDown is called
            
            //also they will be executed in reverse order ! so the second block will be executed first !
        }
        
        print("In Middle of the Test")          //4
        
        addTeardownBlock {
            print("In Second tearDown block")   //6
        }
        
        print("Finishing the Test")             //5
    }
   

}
