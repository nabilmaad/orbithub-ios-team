//
//  SearchViewController.swift
//  OrbitHub-Team
//
//  Created by Nabil Maadarani on 2015-10-07.
//  Copyright © 2015 OrbitHub Inc. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var hubBasketballImage: UIImageView!
    @IBOutlet weak var hubHockeyImage: UIImageView!
    @IBOutlet weak var hubSoccerImage: UIImageView!
    @IBOutlet weak var hubVolleyballImage: UIImageView!
    
    @IBOutlet weak var dateView: UIView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var locationView: UIView!
    @IBOutlet weak var locationTextField: UITextField!
    
    @IBOutlet weak var searchButton: UIButton!
    
    var sportSelected: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupHubImages()
        setupSearchButton()
        
        addTapGestureRecognizers()
        
        NSNotificationCenter.defaultCenter().removeObserver(self, name: "dateSetID", object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "dateSet:", name: "dateSetID", object: nil)
    }
    
    func dateSet(notification: NSNotification) {
        self.dateLabel.text! = notification.userInfo!["date"] as! String
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
    
    func setupSearchButton() {
        self.searchButton.layer.cornerRadius = 4
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
    }
    
    // MARK: Tap recognizer functions
    // Hubs
    func basketballTapped() {
        self.hubBasketballImage.alpha = 1
        self.hubHockeyImage.alpha = 0.25
        self.hubSoccerImage.alpha = 0.25
        self.hubVolleyballImage.alpha = 0.25
        
        self.sportSelected = "basketball"
    }
    
    func hockeyTapped() {
        self.hubHockeyImage.alpha = 1
        self.hubBasketballImage.alpha = 0.25
        self.hubSoccerImage.alpha = 0.25
        self.hubVolleyballImage.alpha = 0.25
        
        self.sportSelected = "hockey"
    }
    
    func soccerTapped() {
        self.hubSoccerImage.alpha = 1
        self.hubBasketballImage.alpha = 0.25
        self.hubHockeyImage.alpha = 0.25
        self.hubVolleyballImage.alpha = 0.25
        
        self.sportSelected = "soccer"
    }
    
    func volleyballTapped() {
        self.hubVolleyballImage.alpha = 1
        self.hubBasketballImage.alpha = 0.25
        self.hubHockeyImage.alpha = 0.25
        self.hubSoccerImage.alpha = 0.25
        
        self.sportSelected = "volleyball"
    }
    
    // Sections
    func dateTapped() {
        let dateViewController = self.storyboard?.instantiateViewControllerWithIdentifier("DateTableViewController") as! DateTableViewController
        self.navigationController?.pushViewController(dateViewController, animated: true)
    }
    
    @IBAction func cancelTapped(sender: AnyObject) {
        self.navigationController?.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func searchTapped(sender: AnyObject) {
        
    }
}
