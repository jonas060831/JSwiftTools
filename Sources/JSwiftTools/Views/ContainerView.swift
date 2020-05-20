//
//  ContainerView.swift
//  JSwiftToolsEDITOR
//
//  Created by iAmJOnAs on 5/20/20.
//  Copyright © 2020 iAmJOnAs. All rights reserved.
//

import UIKit

public class ContainerView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUpView()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpView()
    }
    private func setUpView(){
        backgroundColor = .red
        
        //corner radius
        layer.cornerRadius = 35
        
        //border color
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 2
        
        //apply shadow
        layer.applyShadow()
        
        clipsToBounds = true
        layer.masksToBounds = false
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    //layerMaxXMinYCorner top right
    //layerMinXMinYCorner top left
    //layerMinXMaxYCorner bottom left
    // layerMaxXMaxYCorner bottom right
    
    private func circleCorners() {
        
        layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner, .layerMaxXMaxYCorner, .layerMinXMaxYCorner]
    }
    private func circleTopCorners(){
        layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
    }
    private func circleBottomCorners(){
        layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }
    private func circleLeftCorners(){
        layer.maskedCorners = [.layerMinXMaxYCorner, .layerMinXMinYCorner]
    }
    private func circleRightCorners(){
        layer.maskedCorners = [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]
    }
    private func circleTopRight(){
        layer.maskedCorners = [.layerMaxXMinYCorner]
    }
    private func circleTopLeft(){
        layer.maskedCorners = [.layerMinXMinYCorner]
    }
}
