//
//  ViewController.swift
//  swag
//
//  Created by Nehal Soni on 15/08/2018.
//  Copyright © 2018 Nehal Soni. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController,UITableViewDataSource,
UITableViewDelegate {

    @IBOutlet weak var categoryTable: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource  = self
        categoryTable.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as! CategoryCell? {
            let cat =  DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: cat)
            return cell
        }
        return CategoryCell()
    }
    
}

