//
//  EventsNearMeTableViewController.swift
//  OrbitHub-Team
//
//  Created by Nabil Maadarani on 2015-10-05.
//  Copyright © 2015 OrbitHub Inc. All rights reserved.
//

import UIKit

class EventsNearMeTableViewController: UITableViewController {

    let joinedGames = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().removeObserver(self, name: "joinedID", object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "joined:", name: "joinedID", object: nil)
        
        NSNotificationCenter.defaultCenter().removeObserver(self, name: "createEventDoneID", object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "createEventDone:", name: "createEventDoneID", object: nil)
    }
    
    func joined(notification: NSNotification) {
        playersNeeded.removeObjectAtIndex(0)
        playersNeeded.insertObject("5", atIndex: 0)
        self.joinedGames.addObject(0)
        tableView.reloadRowsAtIndexPaths([NSIndexPath(forRow: 0, inSection: 0)], withRowAnimation: UITableViewRowAnimation.None)
    }
    
    func createEventDone(notification: NSNotification) {
        tableView.reloadData()
    }
    
    // MARK: - Table view data source
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hubs.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("EventCell", forIndexPath: indexPath) as! EventCell

        // Configure the cell...
        cell.eventSportImage.layer.borderWidth = 1
        cell.eventSportImage.layer.borderColor = UIColor.blackColor().CGColor
        cell.eventSportImage.image = UIImage(named: hubs[indexPath.row] as! String)
        
        cell.eventLocationLabel.text! = locations[indexPath.row] as! String
        cell.eventDateLabel.text! = times[indexPath.row] as! String
        cell.badgeLabel.text! = playersNeeded[indexPath.row] as! String
        
        if self.joinedGames.containsObject(indexPath.row) {
            cell.eventLocationLabel.textColor = UIColor.whiteColor()
            cell.eventDateLabel.textColor = UIColor.whiteColor()
            cell.playersNeededLabel.textColor = UIColor.whiteColor()
            cell.backgroundColor = colorWithHexString("#4CD964")
        }

        return cell
    }
    
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            hubs.removeObjectAtIndex(indexPath.row)
            locations.removeObjectAtIndex(indexPath.row)
            times.removeObjectAtIndex(indexPath.row)
            playersNeeded.removeObjectAtIndex(indexPath.row)
            
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
        }
    }
    
    override func tableView(tableView: UITableView, titleForDeleteConfirmationButtonForRowAtIndexPath indexPath: NSIndexPath) -> String? {
        return "Not interested"
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
