//
//  Array+RemoveDuplicateValues.swift
//  JSwiftToolsEDITOR
//
//  Created by iAmJOnAs on 6/3/20.
//  Copyright © 2020 iAmJOnAs. All rights reserved.
//

import UIKit

public extension Array where Element: Hashable {
    func removingDuplicates() -> [Element] {
        var addedDict = [Element: Bool]()

        return filter {
            addedDict.updateValue(true, forKey: $0) == nil
        }
    }

    mutating func removeDuplicates() {
        self = self.removingDuplicates()
    }
}
