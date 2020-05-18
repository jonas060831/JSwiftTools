//
//  UIColor+RGB.swift
//  JSwiftToolsEDITOR
//
//  Created by iAmJOnAs on 5/18/20.
//  Copyright © 2020 iAmJOnAs. All rights reserved.
//
import UIKit

public extension UIColor {
    
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: a)
    }
}
