//
//  ThemeManager.swift
//  News
//
//  Created by Matthew Sutton on 3/11/19.
//  Copyright © 2019 Matthew Sutton. All rights reserved.
//

import UIKit

class ThemeManager {
    
    static func setup() {
        
        UINavigationBar.appearance().barTintColor = UIColor(red: 0.188, green: 0.243, blue: 0.306, alpha: 1.00)
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        
    }
    
}
