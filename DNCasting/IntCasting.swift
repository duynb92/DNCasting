//
//  IntCasting.swift
//  DNCasting
//
//  Created by Duy Nguyen on 9/8/17.
//  Copyright © 2017 Duy Nguyen. All rights reserved.
//

import Foundation

public extension Int {
    public func toString() -> String {
        return "\(self)"
    }
    
    public func toDouble() -> Double {
        return Double(self)
    }
    
    public func toFloat() -> Float {
        return Float(self)
    }
    
    public func toBool() -> Bool? {
        switch self {
        case 0:
            return false
        case 1:
            return true
        default:
            return nil
        }
    }
}
