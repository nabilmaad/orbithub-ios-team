//
//  Helper.swift
//  OrbitHub-Team
//
//  Created by Nabil Maadarani on 2015-10-05.
//  Copyright © 2015 OrbitHub Inc. All rights reserved.
//

import Foundation
import UIKit

// MARK: Events
let hubs = NSMutableArray(array: ["hub_soccer", "hub_soccer", "hub_basketball", "hub_hockey", "hub_volleyball"])
let locations = NSMutableArray(array: ["RA Centre", "uOttawa Lees Gym", "OSSC", "St-Laurent Complex", "Fisher Park School"])
let times = NSMutableArray(array: ["Tomorrow at 15:00", "Wednesday Oct. 9 at 10:00", "Wednesday Oct. 9 at 16:00", "Thursday Oct. 10 at 13:30", "Friday Oct. 11 at 12:00"])
let playersNeeded = NSMutableArray(array: ["6", "4", "2", "3", "1"])

// MARK: Add players
let addPlayersImages = ["nabil", "franck", "mona", "brooke", "kim"]
let addPlayersNames = ["Nabil M.", "Franck M.", "Mona H.", "Brooke S.", "Kim T"]

// MARK: Colors
let ORBITHUB_ORANGE = "#FDB11E"

// MARK: Using colors from HEX
func colorWithHexString (hex:String) -> UIColor {
    var cString:String = hex.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet()).uppercaseString
    
    if (cString.hasPrefix("#")) {
        cString = (cString as NSString).substringFromIndex(1)
    }
    
    if (cString.characters.count != 6) {
        return UIColor.grayColor()
    }
    
    let rString = (cString as NSString).substringToIndex(2)
    let gString = ((cString as NSString).substringFromIndex(2) as NSString).substringToIndex(2)
    let bString = ((cString as NSString).substringFromIndex(4) as NSString).substringToIndex(2)
    
    var r:CUnsignedInt = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0;
    NSScanner(string: rString).scanHexInt(&r)
    NSScanner(string: gString).scanHexInt(&g)
    NSScanner(string: bString).scanHexInt(&b)
    
    
    return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: CGFloat(1))
}