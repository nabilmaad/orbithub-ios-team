//
//  AddPlayersTableViewController.swift
//  OrbitHub-Team
//
//  Created by Nabil Maadarani on 2015-10-06.
//  Copyright © 2015 OrbitHub Inc. All rights reserved.
//

import UIKit

class AddPlayersTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return addPlayersImages.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PlayerCell", forIndexPath: indexPath) as! PlayerCell

        // Configure the cell...
        cell.playerImage.image = UIImage(named: addPlayersImages[indexPath.row])
        cell.playerImage.layer.borderWidth = 1
        cell.playerImage.layer.borderColor = UIColor.blackColor().CGColor
        cell.playerName.text! = addPlayersNames[indexPath.row]
        
        cell.selectionStyle = .None
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.cellForRowAtIndexPath(indexPath)?.accessoryType = .Checkmark
        
        let numberOfSelected = tableView.indexPathsForSelectedRows?.count
        NSNotificationCenter.defaultCenter().postNotificationName("playersSetID", object: nil, userInfo: ["numberOfPlayers": numberOfSelected!])
    }
    
    override func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.cellForRowAtIndexPath(indexPath)?.accessoryType = .None
        
        let numberOfSelected = tableView.indexPathsForSelectedRows?.count
        NSNotificationCenter.defaultCenter().postNotificationName("playersSetID", object: nil, userInfo: ["numberOfPlayers": numberOfSelected!])
    }

}
