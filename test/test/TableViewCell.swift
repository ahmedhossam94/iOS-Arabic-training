//
//  TableViewCell.swift
//  test
//
//  Created by egy10 on 1/12/18.
//  Copyright © 2018 ahmed hossam. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lalabel: UILabel!
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
