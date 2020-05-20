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
    
    public func circleCorners() {
        
        if #available(iOS 11.0, *) {
            layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner, .layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        } else {
            // Fallback on earlier versions
        }
    }
    public func circleTopCorners(){
        if #available(iOS 11.0, *) {
            layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        } else {
            // Fallback on earlier versions
        }
    }
    public func circleBottomCorners(){
        if #available(iOS 11.0, *) {
            layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        } else {
            // Fallback on earlier versions
        }
    }
    public func circleLeftCorners(){
        if #available(iOS 11.0, *) {
            layer.maskedCorners = [.layerMinXMaxYCorner, .layerMinXMinYCorner]
        } else {
            // Fallback on earlier versions
        }
    }
    public func circleRightCorners(){
        if #available(iOS 11.0, *) {
            layer.maskedCorners = [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]
        } else {
            // Fallback on earlier versions
        }
    }
    public func circleTopRight(){
        if #available(iOS 11.0, *) {
            layer.maskedCorners = [.layerMaxXMinYCorner]
        } else {
            // Fallback on earlier versions
        }
    }
    public func circleTopLeft(){
        if #available(iOS 11.0, *) {
            layer.maskedCorners = [.layerMinXMinYCorner]
        } else {
            // Fallback on earlier versions
        }
    }
}
