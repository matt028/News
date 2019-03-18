//
//  NewsDetailViewModel.swift
//  News
//
//  Created by Matthew Sutton on 3/18/19.
//  Copyright © 2019 Matthew Sutton. All rights reserved.
//

import Foundation

struct NewsDetailViewModel {
    let article: Article
}

extension NewsDetailViewModel {
    init(_ article: Article) {
        self.article = article
    }
}

extension NewsDetailViewModel {
    var sourceName: String {
        return self.article.sourceName
    }
    
    var url: String? {
        return self.article.url
    }
}
