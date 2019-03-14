//
//  UI+Extensions.swift
//  News
//
//  Created by Matthew Sutton on 3/14/19.
//  Copyright © 2019 Matthew Sutton. All rights reserved.
//

import UIKit

extension UIImage {
    
    static func imageForPlaceholder() -> UIImage {
        return UIImage(named: "placeholder")!
    }
    
    static func imageForHeadline(url: String, completion: @escaping (UIImage) -> ()) {
        guard let imageURL = URL(string: url) else {
            completion(UIImage.imageForPlaceholder())
            return
        }
        
        DispatchQueue.global().async {
            if let data = try? Data(contentsOf: imageURL) {
                if let downloadImage = UIImage(data: data) {
                    completion(downloadImage)
                }
            }
        }
    }
}
