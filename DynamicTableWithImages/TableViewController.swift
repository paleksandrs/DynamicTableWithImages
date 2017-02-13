//
//  TableViewController.swift
//  DynamicTableWithImages
//
//  Created by Aleksandrs Proskurins on 13/02/2017.
//  Copyright © 2017 Aleksandrs Proskurins. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    private let images = [UIImage(named: "1.jpg")!, UIImage(named: "2.jpg")!, UIImage(named: "1.jpg")!, UIImage(named: "2.jpg")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return images.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ImageTableViewCell.self), for: indexPath) as! ImageTableViewCell
        
        cell.setCustomImage(image: images[indexPath.row])
        
        return cell
    }
}
