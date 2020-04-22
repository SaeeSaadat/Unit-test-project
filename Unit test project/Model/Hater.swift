//
//  Hater.swift
//  Unit test project
//
//  Created by Saee Saadat on 4/20/20.
//  Copyright © 2020 Saee Saadat. All rights reserved.
//

import Foundation

struct Hater {
    var hating = false
    
    mutating func hadABadDay(){
        hating = true
    }
    mutating func hadAGoodDay(){
        hating = false
    }
}
