//
//  ImageModel.swift
//  DataSourcePrefetching
//
//  Created by rafiul hasan on 15/2/23.
//

import Foundation

struct ImageModel {
    public private(set) var url: URL?
    let order: Int
    
    init(url: String?, order: Int) {
        self.url = url?.toURL
        self.order = order
    }
}

public extension String {
    var toURL: URL? {
        return URL(string: self)
    }
}
