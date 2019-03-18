//
//  NewsDetailVC.swift
//  News
//
//  Created by Matthew Sutton on 3/18/19.
//  Copyright © 2019 Matthew Sutton. All rights reserved.
//

import UIKit
import WebKit

class NewsDetailVC: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    var article: Article!
    private var newsDetailVM: NewsDetailViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        self.newsDetailVM = NewsDetailViewModel(article)
        self.navigationItem.largeTitleDisplayMode = .never
        self.title = self.newsDetailVM.sourceName
        
        guard let url = self.newsDetailVM.url, let newsDetailURL = URL(string: url) else { return }
        let request = URLRequest(url: newsDetailURL)
        self.webView.load(request)
    }
    
    
}
