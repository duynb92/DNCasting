//
//  BoolCasting.swift
//  DNCasting
//
//  Created by Duy Nguyen on 9/8/17.
//  Copyright © 2017 Duy Nguyen. All rights reserved.
//

import Foundation

public extension Bool {
    public func toString() -> String {
        return "\(self)"
    }
    
    public func toInt() -> Int {
        return self ? 1 : 0
    }
    
    public func toDouble() -> Double {
        return self ? 1.toDouble() : 0.toDouble()
    }
    
    public func toFloat() -> Float {
        return self ? 1.toFloat() : 0.toFloat()
    }
}
