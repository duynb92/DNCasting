//
//  FloatCasting.swift
//  DNCasting
//
//  Created by Duy Nguyen on 9/8/17.
//  Copyright © 2017 Duy Nguyen. All rights reserved.
//

import Foundation

public extension Float {
    public func toString() -> String {
        return "\(self)"
    }
    
    public func toString(minDigits: Int, maxDigits: Int, roundingMode: NumberFormatter.RoundingMode = .halfEven, locale : Locale = Locale(identifier: "en_US")) -> String {
        return self.toDouble().toString(minDigits:minDigits, maxDigits:maxDigits, roundingMode:roundingMode, locale: locale)
    }
    
    public func toString(exactFractionDigits: Int, roundingMode: NumberFormatter.RoundingMode = .halfEven, locale : Locale = Locale(identifier: "en_US")) -> String {
        return toString(minDigits: exactFractionDigits, maxDigits: exactFractionDigits, roundingMode: roundingMode, locale: locale)
    }
    
    
    private func toDouble() -> Double {
        return Double(self)
    }
    
    public func toInt() -> Int {
        return Int(self)
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
