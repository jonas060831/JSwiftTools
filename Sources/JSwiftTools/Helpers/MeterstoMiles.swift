//
//  MeterstoMiles.swift
//  JSwiftToolsEDITOR
//
//  Created by iAmJOnAs on 5/19/20.
//  Copyright © 2020 iAmJOnAs. All rights reserved.
//

import UIKit

public func convertMeterstoMiles(m: Double, places: Int) -> Double {
    
    //meters to miles
    
    let miles = (m * 0.00062137).rounded(toPlaces: places)
    
    return miles
}


