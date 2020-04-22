//
//  Converter.swift
//  Unit test project
//
//  Created by Saee Saadat on 4/20/20.
//  Copyright © 2020 Saee Saadat. All rights reserved.
//

import Foundation

struct Converter {
    func convertToCelsius(fahrenheit : Double) -> Double {
        return (fahrenheit - 32) * 5 / 9
    }
}
