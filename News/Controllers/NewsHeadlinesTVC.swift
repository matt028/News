//
//  NewsHeadlinesTVC.swift
//  News
//
//  Created by Matthew Sutton on 3/11/19.
//  Copyright © 2019 Matthew Sutton. All rights reserved.
//

import UIKit

class NewsHeadlinesTVC: UITableViewController {
    
    private var categoryListVM: CategoryListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        populateHeadlinesAndArticles()
    }
    
    private func populateHeadlinesAndArticles() {
        CategoryService().getAllHeadlinesForAllCategories { [weak self] categories in
            self?.categoryListVM = CategoryListViewModel(categories: categories)
            self?.tableView.reloadData()
        }
    }
    
    private func setupUI() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        self.tableView.tableHeaderView = UIView.viewForTableViewHeader(subtitle: Date.dateAsStringForTableViewHeader())
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "NewsDetailVC" {
            prepareSegueForNewsDetails(segue)
        }
    }
    
    private func prepareSegueForNewsDetails(_ segue: UIStoryboardSegue) {
        guard let newsDetailVC = segue.destination as? NewsDetailVC else { fatalError("NewsDetailVC not found") }
        guard let indexPath = tableView.indexPathForSelectedRow else { fatalError("Unable to get the selected row")}
        
        let articleVM = self.categoryListVM.categoryAtIndex(index: indexPath.section).articleAtIndex(index: indexPath.row)
        
        newsDetailVC.article = articleVM.article
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return self.categoryListVM.heightForHeaderInSection(section)
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let name = self.categoryListVM.categoryAtIndex(index: section).name
        return UIView.viewForSectionHeader(title: name)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.categoryListVM == nil ? 0 : self.categoryListVM.numberOfSections
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.categoryListVM.numberOfRowsInSection(section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NewsHeadlineCell", for: indexPath) as? NewsHeadlineCell else { fatalError("NewsHeadlineCell not found") }
        
        let articleVM = self.categoryListVM.categoryAtIndex(index: indexPath.section).articleAtIndex(index: indexPath.row)
        
        cell.configure(vm: articleVM)
        
        return cell
    }
    
    
    
}
