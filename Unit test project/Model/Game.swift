//
//  Game.swift
//  Unit test project
//
//  Created by Saee Saadat on 4/22/20.
//  Copyright © 2020 Saee Saadat. All rights reserved.
//

import Foundation

enum GameError: LocalizedError {
    case notPurchased
    case notInstalled
    case parentControlsDisallowed
}

struct Game {
    let name : String
    
    func play() throws {
        if name == "BioBlitz" {
            throw GameError.notPurchased
        }else if name == "Blastazap" {
            throw GameError.notInstalled
        }else if name == "Dead Storm Rising" {
            throw GameError.parentControlsDisallowed
        }else {
            print("\(name) is OK to play :)")
        }
    }
}
