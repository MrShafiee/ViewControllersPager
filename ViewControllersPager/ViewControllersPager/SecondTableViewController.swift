//
//  SecondTableViewController.swift
//  ViewControllersPager
//
//  Created by Amin Shafiee on 1/21/19.
//  Copyright © 2019 OdinKit Co. All rights reserved.
//

import UIKit

class SecondTableViewController: UITableViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? 2 : 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier")
        if cell == nil {
            cell = UITableViewCell.init(style: .default, reuseIdentifier: "reuseIdentifier")
        }
        
        cell?.textLabel?.text = "Section \(indexPath.section+1) and cell Number \(indexPath.row+1)"
        return cell!
    }
    
}
