//
//  ThrowingTests.swift
//  Unit test projectTests
//
//  Created by Saee Saadat on 4/22/20.
//  Copyright © 2020 Saee Saadat. All rights reserved.
//

import XCTest
@testable import Unit_test_project

class ThrowingTests: XCTestCase {

    
    
    // first way of testing throwing functions
    func test_playingBioBlitz_shouldThrow() {
        let game = Game(name: "BioBlitz")
        
        do {
            try game.play()
            XCTFail() // because it should throw and go to catch ! this line is not supposed to be executed ! if it does , it's a fail !
        }catch GameError.notPurchased  {
            //success
        }catch {
            XCTFail()
        }
    }
    
    
    // second way
    func test_playingBlastazap_shouldThrow(){
        let game = Game(name: "Blastazap")
        
        XCTAssertThrowsError(try game.play()) { error in
            XCTAssertEqual(error as? GameError, GameError.notInstalled)
        }
    }
    
    // forget about the dead storm !
    
    
    //third way
    //it's for functions that AREN'T SUPPOSED TO THROW
    //so throwing means something's wrong -> fail
    func test_playingPacMan_shouldNotThrow() throws {
        let game = Game(name: "Dead Storm Rising")
        try game.play()
        //if it throws anything it's instant fail !
        
        //to make the error description more useful , we use the extension below
        // + we'll make the GameError Enum conform to LocalizedError
    }
    
    func test_playingAnyOtherGame_shouldNotThrow(){
        let game = Game(name : "GTA")
        
        XCTAssertNoThrow(try game.play())
    }

}




extension LocalizedError {
    var errorDescription: String? {
        return "\(self)"
    }
}
