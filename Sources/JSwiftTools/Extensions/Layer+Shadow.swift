//
//  Layer+Shadow.swift
//  JSwiftToolsEDITOR
//
//  Created by iAmJOnAs on 5/18/20.
//  Copyright © 2020 iAmJOnAs. All rights reserved.
//

import Foundation
import UIKit

public extension CALayer {

   func applyShadow(){
        shadowColor = UIColor.black.cgColor
        shadowOffset = CGSize(width: 0.0, height: 0.6)
        shadowRadius = 8
        shadowOpacity = 0.5
    }
}
