//
//  CallLogCell.swift
//  TxTy ios
//
//  Created by Ahmed Mostafa on 1/25/17.
//  Copyright © 2017 Ahmed Mostafa. All rights reserved.
//

import UIKit

class CallLogCell: UITableViewCell {

    @IBOutlet weak var callerProfileImageView: UIImageView!
    @IBOutlet weak var timeSuffixLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var callerNumberLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
