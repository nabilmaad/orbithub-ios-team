//
//  EventDetailsViewController.swift
//  OrbitHub-Team
//
//  Created by Nabil Maadarani on 2015-10-05.
//  Copyright © 2015 OrbitHub Inc. All rights reserved.
//

import UIKit

class EventDetailsViewController: UIViewController {
    
    @IBOutlet weak var captainImage: CircularImageView!
    
    @IBOutlet weak var player1Image: UIImageView!
    @IBOutlet weak var player2Image: UIImageView!
    @IBOutlet weak var player3Image: UIImageView!
    @IBOutlet weak var player4Image: UIImageView!
    @IBOutlet weak var player5Image: UIImageView!
    @IBOutlet weak var player6Image: UIImageView!
    @IBOutlet weak var player7Image: UIImageView!
    @IBOutlet weak var joinTeam1Button: UIButton!
    
    @IBOutlet weak var opponent1Image: UIImageView!
    @IBOutlet weak var opponent2Image: UIImageView!
    @IBOutlet weak var opponent3Image: UIImageView!
    @IBOutlet weak var opponent4Image: UIImageView!
    @IBOutlet weak var opponent5Image: UIImageView!
    @IBOutlet weak var opponent6Image: UIImageView!
    @IBOutlet weak var opponent7Image: UIImageView!
    @IBOutlet weak var joinTeam2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupImages()
        setupButtons()
    }
    

    func setupImages() {
        // Captain
        self.captainImage.layer.cornerRadius = 25
        self.captainImage.layer.masksToBounds = true
        self.captainImage.layer.borderWidth = 1
        self.captainImage.layer.borderColor = UIColor.redColor().CGColor
        
        // Players
        self.player1Image.layer.cornerRadius = 25
        self.player1Image.layer.masksToBounds = true
        self.player1Image.layer.borderWidth = 1
        self.player1Image.layer.borderColor = colorWithHexString("#5AC8FB").CGColor
        
        self.player2Image.layer.cornerRadius = 25
        self.player2Image.layer.masksToBounds = true
        self.player2Image.layer.borderWidth = 1
        self.player2Image.layer.borderColor = colorWithHexString("#5AC8FB").CGColor
        
        self.player3Image.layer.cornerRadius = 25
        self.player3Image.layer.masksToBounds = true
        self.player3Image.layer.borderWidth = 1
        self.player3Image.layer.borderColor = colorWithHexString("#5AC8FB").CGColor
        
        self.player4Image.layer.cornerRadius = 25
        self.player4Image.layer.masksToBounds = true
        self.player4Image.layer.borderWidth = 1
        self.player4Image.layer.borderColor = colorWithHexString("#5AC8FB").CGColor
        
        self.player5Image.layer.cornerRadius = 25
        self.player5Image.layer.masksToBounds = true
        self.player5Image.layer.borderWidth = 1
        self.player5Image.layer.borderColor = colorWithHexString("#5AC8FB").CGColor
        
        self.player6Image.layer.cornerRadius = 25
        self.player6Image.layer.masksToBounds = true
        self.player6Image.layer.borderWidth = 1
        self.player6Image.layer.borderColor = colorWithHexString("#5AC8FB").CGColor
        
        self.player7Image.layer.cornerRadius = 25
        self.player7Image.layer.masksToBounds = true
        self.player7Image.layer.borderWidth = 1
        self.player7Image.layer.borderColor = colorWithHexString("#5AC8FB").CGColor
        
        // Opponents
        self.opponent1Image.layer.cornerRadius = 25
        self.opponent1Image.layer.masksToBounds = true
        self.opponent1Image.layer.borderWidth = 1
        self.opponent1Image.layer.borderColor = colorWithHexString("#8E8E93").CGColor
        
        self.opponent2Image.layer.cornerRadius = 25
        self.opponent2Image.layer.masksToBounds = true
        self.opponent2Image.layer.borderWidth = 1
        self.opponent2Image.layer.borderColor = colorWithHexString("#8E8E93").CGColor
        
        self.opponent3Image.layer.cornerRadius = 25
        self.opponent3Image.layer.masksToBounds = true
        self.opponent3Image.layer.borderWidth = 1
        self.opponent3Image.layer.borderColor = colorWithHexString("#8E8E93").CGColor
        
        self.opponent4Image.layer.cornerRadius = 25
        self.opponent4Image.layer.masksToBounds = true
        self.opponent4Image.layer.borderWidth = 1
        self.opponent4Image.layer.borderColor = colorWithHexString("#8E8E93").CGColor
        
        self.opponent5Image.layer.cornerRadius = 25
        self.opponent5Image.layer.masksToBounds = true
        self.opponent5Image.layer.borderWidth = 1
        self.opponent5Image.layer.borderColor = colorWithHexString("#8E8E93").CGColor
        
        self.opponent6Image.layer.cornerRadius = 25
        self.opponent6Image.layer.masksToBounds = true
        self.opponent6Image.layer.borderWidth = 1
        self.opponent6Image.layer.borderColor = colorWithHexString("#8E8E93").CGColor
        
        self.opponent7Image.layer.cornerRadius = 25
        self.opponent7Image.layer.masksToBounds = true
        self.opponent7Image.layer.borderWidth = 1
        self.opponent7Image.layer.borderColor = colorWithHexString("#8E8E93").CGColor
        
    }
    
    func setupButtons() {
        self.joinTeam1Button.layer.cornerRadius = 4
        self.joinTeam2Button.layer.cornerRadius = 4
    }
    
    @IBAction func joinTeam1ButtonTapped(sender: AnyObject) {
        NSNotificationCenter.defaultCenter().postNotificationName("joinedID", object: nil)
        UIView.transitionWithView(self.view, duration: 1, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: { () -> Void in
            self.player5Image.image = UIImage(named: "tim")
            self.joinTeam1Button.enabled = false
            self.joinTeam1Button.titleLabel?.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.5)
            self.joinTeam1Button.backgroundColor = UIColor(red: 90/255, green: 200/255, blue: 251/255, alpha: 0.5)
            
            self.opponent5Image.image = UIImage(named: "question")
            self.joinTeam2Button.enabled = true
            self.joinTeam2Button.titleLabel?.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
            self.joinTeam2Button.backgroundColor = UIColor(red: 142/255, green: 142/255, blue: 147/255, alpha: 1)
            }, completion: nil)
    }
    
    @IBAction func joinTeam2ButtonTapped(sender: AnyObject) {
        UIView.transitionWithView(self.view, duration: 1, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: { () -> Void in
            self.opponent5Image.image = UIImage(named: "tim")
            self.joinTeam2Button.enabled = false
            self.joinTeam2Button.titleLabel?.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.5)
            self.joinTeam2Button.backgroundColor = UIColor(red: 142/255, green: 142/255, blue: 147/255, alpha: 0.5)
            
            self.player5Image.image = UIImage(named: "question")
            self.joinTeam1Button.enabled = true
            self.joinTeam1Button.titleLabel?.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
            self.joinTeam1Button.backgroundColor = UIColor(red: 90/255, green: 200/255, blue: 251/255, alpha: 1)
            }, completion: nil)
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
