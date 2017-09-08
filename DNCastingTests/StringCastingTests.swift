//
//  StringCastingTests.swift
//  DNCasting
//
//  Created by Duy Nguyen on 9/8/17.
//  Copyright © 2017 Duy Nguyen. All rights reserved.
//

import XCTest
@testable import DNCasting

class StringCastingTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    // MARK: - GoodString
    func test_ToInt_WithGoodString() {
        let str = "\(Int.max)"
        XCTAssertTrue(str.toInt() != nil)
        XCTAssertTrue(str.toInt() == Int.max)
        XCTAssertTrue(str.toInt() == Int(str))
    }
    
    func test_ToInt32_WithGoodString() {
        let str = "\(Int32.max)"
        XCTAssertTrue(str.toInt32() != nil)
        XCTAssertTrue(str.toInt32() == Int32.max)
        XCTAssertTrue(str.toInt32() == Int32(str))
    }
    
    func test_ToInt64_WithGoodString() {
        let str = "\(Int64.max)"
        XCTAssertTrue(str.toInt64() != nil)
        XCTAssertTrue(str.toInt64() == Int64.max)
        XCTAssertTrue(str.toInt64() == Int64(str))
    }
    
    func test_ToDouble_WithGoodString() {
        let str = "0.007"
        XCTAssertTrue(str.toDouble() != nil)
        XCTAssertTrue(str.toDouble() == 0.007)
        XCTAssertTrue(str.toDouble() == Double(str))
    }
    
    func test_ToFloat_WithGoodString() {
        let str = "0.007"
        XCTAssertTrue(str.toFloat() != nil)
        XCTAssertTrue(str.toFloat() == 0.007)
        XCTAssertTrue(str.toFloat() == Float(str))
    }
    
    func test_ToBool_WithGoodString() {
        var str = "TRuE"
        XCTAssertTrue(str.toBool() != nil)
        XCTAssertTrue(str.toBool() == true)
        
        str = "FaLSe"
        XCTAssertTrue(str.toBool() != nil)
        XCTAssertTrue(str.toBool() == false)
    }
    
    // MARK: - BadString
    func test_ToInt_WithBadString() {
        let str = "bad_string"
        XCTAssertTrue(str.toInt() == nil)
    }
    
    func test_ToInt32_WithBadString() {
        let str = "bad_string"
        XCTAssertTrue(str.toInt32() == nil)
    }
    
    func test_ToInt64_WithBadString() {
        let str = "bad_string"
        XCTAssertTrue(str.toInt64() == nil)
    }
    
    func test_ToDouble_WithBadString() {
        let str = "bad_string"
        XCTAssertTrue(str.toDouble() == nil)
    }
    
    func test_ToFloat_WithBadString() {
        let str = "bad_string"
        XCTAssertTrue(str.toFloat() == nil)
    }
    
    func test_ToBool_WithBadString() {
        let str = "TRuE111"
        XCTAssertTrue(str.toBool() == nil)
    }
    
    //MARK: - Find All Ints
    func test_FindAllInts_GotResult() {
        let str = "On 1st Day Duy 2 Visit 3 Temples on a day"
        XCTAssertTrue(str.findAllInts().count == 2)
        XCTAssertTrue(str.findAllInts()[0] == 2)
        XCTAssertTrue(str.findAllInts()[1] == 3)
    }
    
    func test_FindAllInts_NoResult() {
        let str = "On 1st Day Duy 22n Visit 35rd Temples on a day"
        XCTAssertTrue(str.findAllInts().count == 0)
    }
}
