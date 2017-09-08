//
//  DoubleCastingTests.swift
//  DNCasting
//
//  Created by Duy Nguyen on 9/8/17.
//  Copyright © 2017 Duy Nguyen. All rights reserved.
//

import XCTest

class DoubleCastingTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_toString() {
        let doubleUnderTest = 69.69
        XCTAssertTrue(doubleUnderTest.toString() == "69.69")
    }
    
    func test_toString_WithDecimal() {
        var doubleUnderTest = 69.11111111
        XCTAssertTrue(doubleUnderTest.toString(minDigits: 2, maxDigits: 4) == "69.1111")
        XCTAssertTrue(doubleUnderTest.toString(exactFractionDigits: 1) == "69.1")
        XCTAssertTrue(doubleUnderTest.toString(exactFractionDigits: 5) == "69.11111")
        
        doubleUnderTest = 69.1
        XCTAssertTrue(doubleUnderTest.toString(minDigits: 2, maxDigits: 4) == "69.10")
        XCTAssertTrue(doubleUnderTest.toString(exactFractionDigits: 1) == "69.1")
        XCTAssertTrue(doubleUnderTest.toString(exactFractionDigits: 0) == "69")   
    }
    
    func test_toInt() {
        var doubleUnderTest = 69.89
        XCTAssertTrue(doubleUnderTest.toInt() == 69)
        
        doubleUnderTest = 69.2
        XCTAssertTrue(doubleUnderTest.toInt() == 69)
    }
    
    func test_toFloat() {
        let doubleUnderTest = 69.89
        XCTAssertTrue(doubleUnderTest.toFloat() == 69.89)
    }
    
    func test_toBool_returnTrue() {
        var doubleUnderTest : Double = 1
        XCTAssertTrue(doubleUnderTest.toBool() == true)
        
        doubleUnderTest = 1.0
        XCTAssertTrue(doubleUnderTest.toBool() == true)
    }
    
    func test_toBool_returnFalse() {
        var doubleUnderTest : Double = 0
        XCTAssertTrue(doubleUnderTest.toBool() == false)
        
        doubleUnderTest = 0.0
        XCTAssertTrue(doubleUnderTest.toBool() == false)
    }
    
    func test_toBool_returnNil() {
        let doubleUnderTest = 69.89
        XCTAssertTrue(doubleUnderTest.toBool() == nil)
    }
    
}
