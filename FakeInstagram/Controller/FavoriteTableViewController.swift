//
//  FavoriteTableViewController.swift
//  FakeInstagram
//
//  Created by Bing Guo on 2020/2/29.
//  Copyright © 2020 Bing Guo. All rights reserved.
//

import UIKit

class FavoriteTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpNavigation()
    }
    
    func setUpNavigation() {
        self.navigationItem.title = "動態"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    

}
