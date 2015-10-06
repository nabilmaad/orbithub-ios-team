//
//  EventsNearMeNavigationController.swift
//  OrbitHub-Team
//
//  Created by Nabil Maadarani on 2015-10-05.
//  Copyright © 2015 OrbitHub Inc. All rights reserved.
//

import UIKit

class EventsNearMeNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Update status bar style
        self.setNeedsStatusBarAppearanceUpdate()
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }

}
