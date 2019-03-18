//
//  UIVIew+Extensions.swift
//  News
//
//  Created by Matthew Sutton on 3/16/19.
//  Copyright © 2019 Matthew Sutton. All rights reserved.
//

import UIKit

extension UIView {
    static func viewForTableViewHeader(subtitle: String) -> UIView {
        let screenRect = UIScreen.main.bounds
        
        let subTitleView = UIView(frame: CGRect(origin: .zero, size: CGSize(width: screenRect.size.width, height: 44)))
        let subTitleLbl = UILabel(frame: CGRect(origin: .zero, size: CGSize(width: screenRect.width, height: 44)))
        
        subTitleLbl.text = subtitle
        subTitleLbl.textAlignment = .center
        subTitleLbl.textColor = .gray
        
        subTitleView.addSubview(subTitleLbl)
        return subTitleView
    }
    
    static func viewForSectionHeader(title: String) -> UIView {
        let screenRect = UIScreen.main.bounds
        let headerView = UIView(frame: CGRect(x: 15, y: 0, width: screenRect.width, height: 60))
        
        headerView.backgroundColor = .white
        
        let sectionHeaderLbl = UILabel(frame: headerView.frame)
        sectionHeaderLbl.text = title.uppercased()
        sectionHeaderLbl.textColor = .black
        sectionHeaderLbl.font = UIFont.fontForSectionHeaderTitle()
        
        headerView.addSubview(sectionHeaderLbl)
        
        return headerView
    }
}
