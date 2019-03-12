//
//  NewsHeadlinesTVC.swift
//  News
//
//  Created by Matthew Sutton on 3/11/19.
//  Copyright © 2019 Matthew Sutton. All rights reserved.
//

import UIKit

class NewsHeadlinesTVC: UITableViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        populateHeadlinesAndArticles()
    }
    
    private func populateHeadlinesAndArticles() {
        CategoryService().getAllHeadlinesForAllCategories { categories in
            print(categories)
        }
    }
    
    private func setupUI() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
}
