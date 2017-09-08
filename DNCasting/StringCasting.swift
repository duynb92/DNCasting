//
//  StringCasting.swift
//  DNCasting
//
//  Created by Duy Nguyen on 9/8/17.
//  Copyright © 2017 Duy Nguyen. All rights reserved.
//

import Foundation

public extension String {
    public func toInt() -> Int? {
        return Int(self)
    }
    
    public func toInt32() -> Int32? {
        return Int32(self)
    }
    
    public func toInt64() -> Int64? {
        return Int64(self)
    }
    
    public func toDouble() -> Double? {
        return Double(self)
    }
    
    public func toFloat() -> Float? {
        return Float(self)
    }
    
    //copyright from this guy : https://stackoverflow.com/a/28107487
    public func toBool() -> Bool? {
        switch self.lowercased() {
        case "true", "yes", "1":
            return true
        case "false", "no", "0":
            return false
        default:
            return nil
        }
    }
    
    public func findAllInts() -> [Int] {
        let strs = self.components(separatedBy: CharacterSet.whitespaces)
        return strs.filter { (str) -> Bool in
            return str.toInt() != nil
        }.map { (str) -> Int in
            str.toInt()!
        }
    }
}
