//
//  UIView+Gradient.swift
//  template
//
//  Created by iAmJOnAs on 5/13/20.
//  Copyright © 2020 iAmJOnAs. All rights reserved.
//

import UIKit

extension UIView {
    func setGradientBackground(c1: UIColor, c2: UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [c1.cgColor, c2.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 1.2, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
