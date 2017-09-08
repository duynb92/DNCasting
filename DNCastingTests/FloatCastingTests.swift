//
//  FloatCastingTests.swift
//  DNCasting
//
//  Created by Duy Nguyen on 9/8/17.
//  Copyright © 2017 Duy Nguyen. All rights reserved.
//

import XCTest

class FloatCastingTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_toString() {
        let floatUnderTest : Float = 69.69
        XCTAssertTrue(floatUnderTest.toString() == "69.69")
    }
    
    func test_toString_WithDecimal() {
        var floatUnderTest : Float = 69.11111111
        XCTAssertTrue(floatUnderTest.toString(minDigits: 2, maxDigits: 4) == "69.1111")
        XCTAssertTrue(floatUnderTest.toString(exactFractionDigits: 1) == "69.1")
        XCTAssertTrue(floatUnderTest.toString(exactFractionDigits: 5) == "69.11111")
        
        floatUnderTest = 69.1
        XCTAssertTrue(floatUnderTest.toString(minDigits: 2, maxDigits: 4) == "69.10")
        XCTAssertTrue(floatUnderTest.toString(exactFractionDigits: 1) == "69.1")
        XCTAssertTrue(floatUnderTest.toString(exactFractionDigits: 0) == "69")
    }
    
    func test_toInt() {
        var floatUnderTest : Float = 69.89
        XCTAssertTrue(floatUnderTest.toInt() == 69)
        
        floatUnderTest = 69.2
        XCTAssertTrue(floatUnderTest.toInt() == 69)
    }
    
    func test_toBool_returnTrue() {
        var floatUnderTest : Float = 1
        XCTAssertTrue(floatUnderTest.toBool() == true)
        
        floatUnderTest = 1.0
        XCTAssertTrue(floatUnderTest.toBool() == true)
    }
    
    func test_toBool_returnFalse() {
        var floatUnderTest : Float = 0
        XCTAssertTrue(floatUnderTest.toBool() == false)
        
        floatUnderTest = 0.0
        XCTAssertTrue(floatUnderTest.toBool() == false)
    }
    
    func test_toBool_returnNil() {
        let floatUnderTest = 69.89
        XCTAssertTrue(floatUnderTest.toBool() == nil)
    }
    
}
