//
//  UserDefaultsChecker.swift
//  JSwiftToolsEDITOR
//
//  Created by iAmJOnAs on 5/18/20.
//  Copyright © 2020 iAmJOnAs. All rights reserved.
//

import Foundation


public func isKeyPresentInUserDefaults(key: String) -> Bool {
    return UserDefaults.standard.object(forKey: key) != nil
}
