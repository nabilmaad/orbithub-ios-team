//
//  EventCell.swift
//  OrbitHub-Team
//
//  Created by Nabil Maadarani on 2015-10-05.
//  Copyright © 2015 OrbitHub Inc. All rights reserved.
//

import UIKit

class EventCell: UITableViewCell {

    @IBOutlet weak var eventSportImage: UIImageView!
    @IBOutlet weak var eventLocationLabel: UILabel!
    @IBOutlet weak var eventDateLabel: UILabel!
    @IBOutlet weak var playersNeededLabel: UILabel!
    @IBOutlet weak var eventBadgeView: BadgeView!
    @IBOutlet weak var badgeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
