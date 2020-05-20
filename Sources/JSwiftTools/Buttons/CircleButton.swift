//
//  CircleButton.swift
//  JSwiftToolsEDITOR
//
//  Created by iAmJOnAs on 5/20/20.
//  Copyright © 2020 iAmJOnAs. All rights reserved.
//

import UIKit

public class CircleButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUpButton()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setUpButton()
    }
    
    private func setUpButton(){
        
        
        self.backgroundColor = .red
        self.setTitle("button", for: .init())
        
        self.frame = CGRect(x: 0, y: 0, width: 70, height: 70)
        self.layer.cornerRadius = 35

        setShadow()
        addScaleEffect()
        translatesAutoresizingMaskIntoConstraints = false
    }
    private func setShadow(){
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0.0, height: 0.6)
        layer.shadowRadius = 8
        layer.shadowOpacity = 0.2
        clipsToBounds = true
        layer.masksToBounds = false
    }
    func addScaleEffect(){
        self.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        
        UIView.animate(withDuration: 0.2, delay: 0, options: UIView.AnimationOptions.allowUserInteraction, animations: {
            self.transform = CGAffineTransform.identity
        }, completion: nil )
    }
}

