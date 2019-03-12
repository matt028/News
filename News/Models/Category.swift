//
//  Category.swift
//  News
//
//  Created by Matthew Sutton on 3/12/19.
//  Copyright © 2019 Matthew Sutton. All rights reserved.
//

import Foundation

struct Category {
    let title: String
    let articles: [Article]
    
    static func all() -> [String] {
        return ["Business", "Entertainment", "General", "Sports"]
    }
}
