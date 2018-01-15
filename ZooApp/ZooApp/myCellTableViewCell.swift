//
//  myCellTableViewCell.swift
//  ZooApp
//
//  Created by egy10 on 1/11/18.
//  Copyright © 2018 ahmed hossam. All rights reserved.
//

import UIKit

class myCellTableViewCell: UITableViewCell {

    @IBOutlet weak var LaDesc: UITextView!
    @IBOutlet weak var LaName: UILabel!
    @IBOutlet weak var LaImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
