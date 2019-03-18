//
//  Date+Extensions.swift
//  News
//
//  Created by Matthew Sutton on 3/16/19.
//  Copyright © 2019 Matthew Sutton. All rights reserved.
//

import UIKit

extension Date {
    static func dateAsStringForTableViewHeader() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM dd"
        return formatter.string(from: Date())
    }
}
