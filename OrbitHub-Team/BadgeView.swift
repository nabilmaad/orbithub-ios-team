//
//  BadgeView.swift
//  OrbitHub
//
//  Created by Nabil Maadarani on 2015-09-15.
//  Copyright © 2015 OrbitHub Inc. All rights reserved.
//

import UIKit

class BadgeView: UIView {
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.setupCircularAndRed()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupCircularAndRed()
    }
    
    // Make the view circular & red
    func setupCircularAndRed() {
        layer.cornerRadius = frame.size.width / 2
        clipsToBounds = true
        backgroundColor = colorWithHexString(ORBITHUB_ORANGE)
    }
    
}
