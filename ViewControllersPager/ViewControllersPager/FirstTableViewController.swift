//
//  FirstTableViewController.swift
//  ViewControllersPager
//
//  Created by Amin Shafiee on 1/21/19.
//  Copyright © 2019 OdinKit Co. All rights reserved.
//

import UIKit

class FirstTableViewController: UITableViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier")
        if cell == nil {
            cell = UITableViewCell.init(style: .default, reuseIdentifier: "reuseIdentifier")
        }
        
        cell?.textLabel?.text = "Cell Number \(indexPath.row+1)"
        return cell!
    }
    
}
