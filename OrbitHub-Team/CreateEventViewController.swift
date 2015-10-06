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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
