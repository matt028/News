//
//  NewsHeadlineCell.swift
//  News
//
//  Created by Matthew Sutton on 3/11/19.
//  Copyright © 2019 Matthew Sutton. All rights reserved.
//

import UIKit

class NewsHeadlineCell: UITableViewCell {
    
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var headlineImgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        headlineImgView.layer.cornerRadius = 8
        headlineImgView.layer.masksToBounds = true
    }
    
}

extension NewsHeadlineCell {
    
    func configure(vm: ArticleViewModel) {
        self.titleLbl.text = vm.title
        self.descriptionLbl.text = vm.description
        vm.image { self.headlineImgView.image = $0 }
    }
}
