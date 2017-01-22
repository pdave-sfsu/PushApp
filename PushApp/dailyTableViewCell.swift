//
//  dailyTableViewCell.swift
//  PushApp
//
//  Created by Poojan Dave on 1/22/17.
//  Copyright © 2017 Poojan Dave. All rights reserved.
//

import UIKit

class dailyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var selfieImageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var numOfPushUpsLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
