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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupHubImages()
        
        addTapGestureRecognizers()
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
        let basketballTap = UITapGestureRecognizer(target: self, action: "basketballTapped")
        self.hubBasketballImage.addGestureRecognizer(basketballTap)
        
        let hockeyTap = UITapGestureRecognizer(target: self, action: "hockeyTapped")
        self.hubHockeyImage.addGestureRecognizer(hockeyTap)
        
        let soccerTap = UITapGestureRecognizer(target: self, action: "soccerTapped")
        self.hubSoccerImage.addGestureRecognizer(soccerTap)
        
        let volleyballTap = UITapGestureRecognizer(target: self, action: "volleyballTapped")
        self.hubVolleyballImage.addGestureRecognizer(volleyballTap)
    }
    
    func basketballTapped() {
        self.hubBasketballImage.alpha = 1
        self.hubHockeyImage.alpha = 0.25
        self.hubSoccerImage.alpha = 0.25
        self.hubVolleyballImage.alpha = 0.25
    }
    
    func hockeyTapped() {
        self.hubHockeyImage.alpha = 1
        self.hubBasketballImage.alpha = 0.25
        self.hubSoccerImage.alpha = 0.25
        self.hubVolleyballImage.alpha = 0.25
    }
    
    func soccerTapped() {
        self.hubSoccerImage.alpha = 1
        self.hubBasketballImage.alpha = 0.25
        self.hubHockeyImage.alpha = 0.25
        self.hubVolleyballImage.alpha = 0.25
    }
    
    func volleyballTapped() {
        self.hubVolleyballImage.alpha = 1
        self.hubBasketballImage.alpha = 0.25
        self.hubHockeyImage.alpha = 0.25
        self.hubSoccerImage.alpha = 0.25
    }

    @IBAction func cancelTapped(sender: AnyObject) {
        self.navigationController?.dismissViewControllerAnimated(true, completion: nil)
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
