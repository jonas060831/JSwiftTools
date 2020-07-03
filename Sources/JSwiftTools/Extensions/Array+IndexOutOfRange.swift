//
//  Array+IndexOutOfRange.swift
//  JSwiftToolsEDITOR
//
//  Created by iAmJOnAs on 7/3/20.
//  Copyright © 2020 iAmJOnAs. All rights reserved.
//

import UIKit

public extension Array {
    func getElement(at index: Int) -> Element? {
        let isValidIndex = index >= 0 && index < count
        return isValidIndex ? self[index] : nil
    }
}
