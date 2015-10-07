//
//  SearchResultsTableViewController.swift
//  OrbitHub-Team
//
//  Created by Nabil Maadarani on 2015-10-07.
//  Copyright © 2015 OrbitHub Inc. All rights reserved.
//

import UIKit

class SearchResultsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("EventCellSearch", forIndexPath: indexPath) as! EventCell
        
        // Configure the cell...
        cell.eventSportImage.layer.borderWidth = 1
        cell.eventSportImage.layer.borderColor = UIColor.blackColor().CGColor
        cell.eventSportImage.image = UIImage(named: hubs[indexPath.row] as! String)
        
        cell.eventLocationLabel.text! = locations[indexPath.row] as! String
        cell.eventDateLabel.text! = times[indexPath.row] as! String
        cell.badgeLabel.text! = playersNeeded[indexPath.row] as! String
        
        return cell
    }

}
