//
//  CreateEventViewController.swift
//  OrbitHub-Team
//
//  Created by Nabil Maadarani on 2015-10-05.
//  Copyright © 2015 OrbitHub Inc. All rights reserved.
//

import UIKit

class CreateEventViewController: UIViewController {

    @IBOutlet weak var hubBasketballImage: UIImageView!
    @IBOutlet weak var hubHockeyImage: UIImageView!
    @IBOutlet weak var hubSoccerImage: UIImageView!
    @IBOutlet weak var hubVolleyballImage: UIImageView!
    
    @IBOutlet weak var dateView: UIView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var locationView: UIView!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var addPlayersVIew: UIView!
    @IBOutlet weak var addPlayersLabel: UILabel!
    
    @IBOutlet weak var createBarButton: UIBarButtonItem!
    
    var numberOfPlayers = 0
    
    // Booleans to enable create button
    var hubSelected = false
    var dateSelected = false
    var locationSet = false
    
    var sportSelected: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupHubImages()
        
        addTapGestureRecognizers()
        
        NSNotificationCenter.defaultCenter().removeObserver(self, name: "dateSetID", object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "dateSet:", name: "dateSetID", object: nil)
        
        NSNotificationCenter.defaultCenter().removeObserver(self, name: "playersSetID", object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "playersSet:", name: "playersSetID", object: nil)
    }
    
    func dateSet(notification: NSNotification) {
        self.dateLabel.text! = notification.userInfo!["date"] as! String
        
        self.dateSelected = true
        if self.hubSelected && self.locationSet {
            self.createBarButton.enabled = true
        }
    }
    
    func playersSet(notification: NSNotification) {
        let numberOfPlayers = notification.userInfo!["numberOfPlayers"] as! Int
        self.numberOfPlayers = numberOfPlayers
        self.addPlayersLabel.textColor = colorWithHexString("#0000EE")
        
        if numberOfPlayers == 1 {
            self.addPlayersLabel.text! = "\(numberOfPlayers) player"
        } else {
            self.addPlayersLabel.text! = "\(numberOfPlayers) players"
        }
    }
    
    func setupHubImages() {
        self.hubBasketballImage.layer.cornerRadius = 50
        self.hubBasketballImage.layer.masksToBounds = true
        self.hubBasketballImage.layer.borderWidth = 1
        self.hubBasketballImage.layer.borderColor = UIColor.blackColor().CGColor
        
        self.hubHockeyImage.layer.cornerRadius = 50
        self.hubHockeyImage.layer.masksToBounds = true
        self.hubHockeyImage.layer.borderWidth = 1
        self.hubHockeyImage.layer.borderColor = UIColor.blackColor().CGColor
        
        self.hubSoccerImage.layer.cornerRadius = 50
        self.hubSoccerImage.layer.masksToBounds = true
        self.hubSoccerImage.layer.borderWidth = 1
        self.hubSoccerImage.layer.borderColor = UIColor.blackColor().CGColor
        
        self.hubVolleyballImage.layer.cornerRadius = 50
        self.hubVolleyballImage.layer.masksToBounds = true
        self.hubVolleyballImage.layer.borderWidth = 1
        self.hubVolleyballImage.layer.borderColor = UIColor.blackColor().CGColor
    }
    
    func addTapGestureRecognizers() {
        // Hubs
        let basketballTap = UITapGestureRecognizer(target: self, action: "basketballTapped")
        self.hubBasketballImage.addGestureRecognizer(basketballTap)
        
        let hockeyTap = UITapGestureRecognizer(target: self, action: "hockeyTapped")
        self.hubHockeyImage.addGestureRecognizer(hockeyTap)
        
        let soccerTap = UITapGestureRecognizer(target: self, action: "soccerTapped")
        self.hubSoccerImage.addGestureRecognizer(soccerTap)
        
        let volleyballTap = UITapGestureRecognizer(target: self, action: "volleyballTapped")
        self.hubVolleyballImage.addGestureRecognizer(volleyballTap)
        
        // Sections
        let dateTap = UITapGestureRecognizer(target: self, action: "dateTapped")
        self.dateView.addGestureRecognizer(dateTap)
        
        let addPlayersTap = UITapGestureRecognizer(target: self, action: "addPlayersTapped")
        self.addPlayersVIew.addGestureRecognizer(addPlayersTap)
    }
    
    // MARK: Tap recognizer functions
    // Hubs
    func basketballTapped() {
        self.hubBasketballImage.alpha = 1
        self.hubHockeyImage.alpha = 0.25
        self.hubSoccerImage.alpha = 0.25
        self.hubVolleyballImage.alpha = 0.25
        
        self.sportSelected = "basketball"
        
        self.hubSelected = true
        if self.dateSelected && self.locationSet {
            self.createBarButton.enabled = true
        }
    }
    
    func hockeyTapped() {
        self.hubHockeyImage.alpha = 1
        self.hubBasketballImage.alpha = 0.25
        self.hubSoccerImage.alpha = 0.25
        self.hubVolleyballImage.alpha = 0.25
        
        self.sportSelected = "hockey"
        
        self.hubSelected = true
        if self.dateSelected && self.locationSet {
            self.createBarButton.enabled = true
        }
    }
    
    func soccerTapped() {
        self.hubSoccerImage.alpha = 1
        self.hubBasketballImage.alpha = 0.25
        self.hubHockeyImage.alpha = 0.25
        self.hubVolleyballImage.alpha = 0.25
        
        self.sportSelected = "soccer"
        
        self.hubSelected = true
        if self.dateSelected && self.locationSet {
            self.createBarButton.enabled = true
        }
    }
    
    func volleyballTapped() {
        self.hubVolleyballImage.alpha = 1
        self.hubBasketballImage.alpha = 0.25
        self.hubHockeyImage.alpha = 0.25
        self.hubSoccerImage.alpha = 0.25
        
        self.sportSelected = "volleyball"
        
        self.hubSelected = true
        if self.dateSelected && self.locationSet {
            self.createBarButton.enabled = true
        }
    }
    
    // Sections
    func dateTapped() {
        let dateViewController = self.storyboard?.instantiateViewControllerWithIdentifier("DateTableViewController") as! DateTableViewController
        self.navigationController?.pushViewController(dateViewController, animated: true)
    }
    
    @IBAction func locationTextFieldChanged(sender: UITextField) {
        if sender.text!.characters.count > 0 {
            self.locationSet = true
            if self.dateSelected && self.hubSelected {
                self.createBarButton.enabled = true
            }
        } else {
            self.locationSet = false
            self.createBarButton.enabled = false
        }
    }
    
    func addPlayersTapped() {
        let addPlayersViewController = self.storyboard?.instantiateViewControllerWithIdentifier("AddPlayersTableViewController") as! AddPlayersTableViewController
        self.navigationController?.pushViewController(addPlayersViewController, animated: true)
    }

    @IBAction func cancelTapped(sender: AnyObject) {
        self.navigationController?.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func createButtonTapped(sender: AnyObject) {
        hubs.addObject("hub_\(sportSelected)")
        locations.addObject(self.locationTextField.text!)
        times.addObject(self.dateLabel.text!)
        playersNeeded.addObject(String(14 - self.numberOfPlayers))
        
        self.navigationController?.dismissViewControllerAnimated(true, completion: { () -> Void in
            NSNotificationCenter.defaultCenter().postNotificationName("createEventDoneID", object: nil)
        })
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
