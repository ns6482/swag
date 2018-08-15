//
//  dataService.swift
//  swag
//
//  Created by Nehal Soni on 15/08/2018.
//  Copyright © 2018 Nehal Soni. All rights reserved.
//

import Foundation
class DataService {
    static let instance = DataService()
    
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    func getCategories() -> [Category] {
        return categories
    }
}
