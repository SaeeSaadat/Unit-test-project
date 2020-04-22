//
//  testing2.swift
//  Unit test projectTests
//
//  Created by Saee Saadat on 4/20/20.
//  Copyright © 2020 Saee Saadat. All rights reserved.
//

import Foundation
import XCTest
@testable import Unit_test_project


// as long as we're in the projectTests folder (target) and a subclass if XCTestCase , all functions starting with "test" will be executed and tested during test !
// that sentence had one too many "test"s in it !
class testing2 : XCTestCase {
    func testCheckST(){
        let a = true
        XCTAssertFalse(!a)
    }
}
