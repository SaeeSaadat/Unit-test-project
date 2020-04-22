//
//  Divider.swift
//  Unit test project
//
//  Created by Saee Saadat on 4/22/20.
//  Copyright © 2020 Saee Saadat. All rights reserved.
//

import Foundation

class Divider {
    func divide(_ num : Int , by: Int) -> (quotient: Int , remainder : Int) {
        let quotient = num / by
        let remainder = num % by
        return (quotient , remainder)
    }
}
