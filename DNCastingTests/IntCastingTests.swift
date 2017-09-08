//
//  IntCastingTests.swift
//  DNCasting
//
//  Created by Duy Nguyen on 9/8/17.
//  Copyright © 2017 Duy Nguyen. All rights reserved.
//

import XCTest

class IntCastingTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_toString() {
        let intUnderTest = 7
        XCTAssertTrue(intUnderTest.toString() == "7")
    }
    
    func test_toDouble() {
        let intUnderTest = 7
        XCTAssertTrue(intUnderTest.toDouble() == 7.0)
    }
    
    func test_toFloat() {
        let intUnderTest = 7
        XCTAssertTrue(intUnderTest.toFloat() == 7.0)
    }
    
    func test_toBool_returnTrue() {
        let intUnderTest = 1
        XCTAssertTrue(intUnderTest.toBool() == true)
    }
    
    func test_toBool_returnFalse() {
        let intUnderTest = 0
        XCTAssertTrue(intUnderTest.toBool() == false)
    }
    
    func test_toBool_returnNil() {
        let intUnderTest = 7
        XCTAssertTrue(intUnderTest.toBool() == nil)
    }
    
}
