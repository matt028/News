//
//  NewsHeadlinesTVC.swift
//  News
//
//  Created by Matthew Sutton on 3/11/19.
//  Copyright © 2019 Matthew Sutton. All rights reserved.
//

import UIKit

class NewsHeadlinesTVC: UITableViewController {
    
    let news = [["title": "This is the title", "description": "This is the description, this is the description."], ["title": "This is the title", "description": "This is the description, this is the description."], ["title": "This is the title", "description": "This is the description, this is the description. This is the description, this is the description. This is the description, this is the description. This is the description, this is the description. This is the description, this is the description."]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NewsHeadlineCell", for: indexPath) as? NewsHeadlineCell else {
            fatalError("NewsHeadlineCell not found")
        }
    
        cell.titleLbl.text = news[indexPath.row]["title"]
        cell.descriptionLbl.text = news[indexPath.row]["description"]
        
        return cell
    }
    
}
