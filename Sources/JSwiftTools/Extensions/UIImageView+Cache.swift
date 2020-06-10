//
//  UIImageView+Cache.swift
//  JSwiftToolsEDITOR
//
//  Created by iAmJOnAs on 6/9/20.
//  Copyright © 2020 iAmJOnAs. All rights reserved.
//

import UIKit

public var imageCache = NSCache<NSString, UIImage>()

public extension UIImageView {
    
    func loadImageUsingCacheWithUrlString(urlString: String) {
        
        //if image was already cache use that instead
        if let cacheImage = imageCache.object(forKey: "\(urlString)" as NSString) {
            self.image = cacheImage
            return
        }
        
        let url = URL(string: urlString)
        
        //create the session using the image url string
        let session = URLSession.shared
        session.dataTask(with: url!) { (data, response, error) in
                
            if let err = error {
                print(err)
                return
            }
            DispatchQueue.main.async {
                
                if let downloadedImage = UIImage(data: data!) {
                    //cache it
                    imageCache.setObject(downloadedImage , forKey: urlString as NSString)
                    //then assign
                    self.image = downloadedImage
                }
            }
        }.resume()
    }
}

