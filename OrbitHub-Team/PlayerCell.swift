//
//  PlayerCell.swift
//  OrbitHub-Team
//
//  Created by Nabil Maadarani on 2015-10-06.
//  Copyright © 2015 OrbitHub Inc. All rights reserved.
//

import UIKit

class PlayerCell: UITableViewCell {

    @IBOutlet weak var playerImage: CircularImageView!
    @IBOutlet weak var playerName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
