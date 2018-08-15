//
//  Category.swift
//  swag
//
//  Created by Nehal Soni on 15/08/2018.
//  Copyright © 2018 Nehal Soni. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
