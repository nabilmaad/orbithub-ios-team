//
//  CircularImageView.swift
//  OrbitHub
//
//  Created by Nabil Maadarani on 2015-07-08.
//  Copyright © 2015 OrbitHub Inc. All rights reserved.
//

import UIKit

class CircularImageView: UIImageView {
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.setupCircular()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupCircular()
    }
    
    override init(image: UIImage?) {
        super.init(image: image)
        self.setupCircular()
    }
    
    override init(image: UIImage?, highlightedImage: UIImage?) {
        super.init(image: image, highlightedImage: highlightedImage)
        self.setupCircular()
    }
    
    // Make the image circular
    func setupCircular() {
        layer.cornerRadius = frame.size.width / 2
        clipsToBounds = true
    }
}
