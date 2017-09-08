//
//  BoolCastingTests.swift
//  DNCasting
//
//  Created by Duy Nguyen on 9/8/17.
//  Copyright © 2017 Duy Nguyen. All rights reserved.
//

import XCTest

class BoolCastingTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_toString_withTrue() {
        let boolUnderTest = true
        XCTAssertTrue(boolUnderTest.toString() == "true")
    }
    
    func test_toInt_withTrue() {
        let boolUnderTest = true
        XCTAssertTrue(boolUnderTest.toInt() == 1)
    }
    
    func test_toDouble_withTrue() {
        let boolUnderTest = true
        XCTAssertTrue(boolUnderTest.toDouble() == 1.0)
    }
    
    func test_toFloat_withTrue() {
        let boolUnderTest = true
        XCTAssertTrue(boolUnderTest.toFloat() == 1.0)
    }
    
    func test_toString_withFalse() {
        let boolUnderTest = false
        XCTAssertTrue(boolUnderTest.toString() == "false")
    }
    
    func test_toInt_withFalse() {
        let boolUnderTest = false
        XCTAssertTrue(boolUnderTest.toInt() == 0)
    }
    
    func test_toDouble_withFalse() {
        let boolUnderTest = false
        XCTAssertTrue(boolUnderTest.toDouble() == 0.0)
    }
    
    func test_toFloat_withFalse() {
        let boolUnderTest = false
        XCTAssertTrue(boolUnderTest.toFloat() == 0.0)
    }
    
}
