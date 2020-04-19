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


class testing2 : XCTestCase {
    func checkST(){
        let a = true
        XCTAssertFalse(!a)
    }
}
