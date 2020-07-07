//
//  DateToString.swift
//  JSwiftToolsEDITOR
//
//  Created by iAmJOnAs on 7/6/20.
//  Copyright © 2020 iAmJOnAs. All rights reserved.
//

import UIKit
import Foundation

public func extractTimeFromDate(date: Date, dateFormat: String) -> String {
    
    let dateFormatter: DateFormatter = DateFormatter()
    dateFormatter.dateFormat = dateFormat
    let dateString = dateFormatter.string(from: date)
    let date = dateFormatter.date(from: dateString)
    let calendar = Calendar.current
    let comp = calendar.dateComponents([.hour, .minute], from: date!)
    let hour = comp.hour
    let minute = comp.minute
    
    //expected output 21:30 ~> object will be military time
    
    if hour < 10 {
        hour = "0\(hour)"
    }
    
    if minute < 10 {
        minute = "0\(minute)"
    }

    return "\(hour):\(minute)"
}
