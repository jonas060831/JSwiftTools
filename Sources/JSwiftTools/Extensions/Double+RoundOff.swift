//
//  Double+RoundOff.swift
//  JSwiftToolsEDITOR
//
//  Created by iAmJOnAs on 5/19/20.
//  Copyright © 2020 iAmJOnAs. All rights reserved.
//

import UIKit

public extension Double {
    /// Rounds the double to decimal places value
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
