//
//  DoubleCasting.swift
//  DNCasting
//
//  Created by Duy Nguyen on 9/8/17.
//  Copyright © 2017 Duy Nguyen. All rights reserved.
//

import Foundation

public extension Double {
    public func toString() -> String {
        return "\(self)"
    }
    
    public func toString(minDigits: Int, maxDigits: Int, roundingMode: NumberFormatter.RoundingMode = .halfEven, locale : Locale = Locale(identifier: "en_US")) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.maximumFractionDigits = maxDigits
        numberFormatter.minimumFractionDigits = minDigits
        numberFormatter.locale = locale
        numberFormatter.roundingMode = roundingMode
        return numberFormatter.string(from: NSNumber(value: self))!
    }
    
    public func toString(exactFractionDigits: Int, roundingMode: NumberFormatter.RoundingMode = .halfEven, locale : Locale = Locale(identifier: "en_US")) -> String {
        return toString(minDigits: exactFractionDigits, maxDigits: exactFractionDigits, roundingMode: roundingMode, locale: locale)
    }
    
    public func toFloat() -> Float {
        return Float(self)
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
