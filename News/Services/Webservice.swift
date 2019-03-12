//
//  Webservice.swift
//  News
//
//  Created by Matthew Sutton on 3/11/19.
//  Copyright © 2019 Matthew Sutton. All rights reserved.
//

import Foundation

struct Resource<T> {
    let url: URL
    let parce: (Data) -> T?
}


class Webservice {
    
    func load<T>(_ resource: Resource<T>, completion: @escaping (T?) -> ()) {
        
        URLSession.shared.dataTask(with: resource.url) { data, response, error in
            
            if let data = data {
                DispatchQueue.main.async {
                    completion(resource.parce(data))
                }
            } else {
                completion(nil)
            }
        }.resume()
    }
}
