//
//  Article.swift
//  News
//
//  Created by Matthew Sutton on 3/12/19.
//  Copyright © 2019 Matthew Sutton. All rights reserved.
//

import Foundation

struct NewsSourcesResponse: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    
    let title: String
    let description: String?
    let url: String?
    let imageURL: String?
    
    private enum CodingKeys: String, CodingKey {
        case title
        case description
        case url
        case imageURL = "urlToImage"
    }
}

extension Article {
    static func by(_ category: String) -> Resource<[Article]> {
        return Resource<[Article]>(url: URL.urlForTopHeadlines(for: category)) { data in
            return try! JSONDecoder().decode(NewsSourcesResponse.self, from: data).articles
        }
    }
}
