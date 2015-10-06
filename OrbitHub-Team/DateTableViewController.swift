//
//  DateTableViewController.swift
//  OrbitHub-Team
//
//  Created by Nabil Maadarani on 2015-10-06.
//  Copyright © 2015 OrbitHub Inc. All rights reserved.
//

import UIKit

class DateTableViewController: UITableViewController {

    @IBOutlet weak var startDateLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Initialize start date
        let currentCalendar = NSCalendar.currentCalendar()
        let components = currentCalendar.components(NSCalendarUnit.Hour.union(NSCalendarUnit.Minute), fromDate: NSDate())
        self.startDateLabel.text! = "Today at \(components.hour):\(components.minute)"
    }

    @IBAction func datePickerChanged(sender: UIDatePicker) {
        let dateFormat = NSDateFormatter()
        dateFormat.dateFormat = "EEE HH:mm"
        self.startDateLabel.text! = "\(getDayOfWeek(sender.date)) at \(getTimeFromDate(sender.date))"
        NSNotificationCenter.defaultCenter().postNotificationName("dateSetID", object: nil, userInfo: ["date": self.startDateLabel.text!])
    }
    
    func getDayOfWeek(date: NSDate) -> String {
        let cal = NSCalendar.currentCalendar()
        var components = cal.components([NSCalendarUnit.Era, NSCalendarUnit.Year, NSCalendarUnit.Month, NSCalendarUnit.Day], fromDate: NSDate())
        let today = cal.dateFromComponents(components)
        components = cal.components([NSCalendarUnit.Era, NSCalendarUnit.Year, NSCalendarUnit.Month, NSCalendarUnit.Day], fromDate: date)
        let newDate = cal.dateFromComponents(components)
        if today!.isEqualToDate(newDate!) {
            return "Today"
        }
        
        let formatter = NSDateFormatter()
        formatter.dateFormat = "EEE"
        return formatter.stringFromDate(date)
    }
    
    func getTimeFromDate(date: NSDate) -> String {
        let formatter = NSDateFormatter()
        formatter.dateFormat = "HH:mm"
        return formatter.stringFromDate(date)
    }
    
    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 0 {
            
        }
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
