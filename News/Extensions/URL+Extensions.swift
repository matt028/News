//
//  URL+Extensions.swift
//  News
//
//  Created by Matthew Sutton on 3/12/19.
//  Copyright © 2019 Matthew Sutton. All rights reserved.
//

import Foundation

extension URL {
    static func urlForTopHeadlines(for category: String) -> URL {
        return URL(string: "https://newsapi.org/v2/top-headlines?category=\(category)&country=us&apiKey=\(API.Key)")!
    }
}
