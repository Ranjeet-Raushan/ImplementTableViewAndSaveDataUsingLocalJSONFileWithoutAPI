//
//  tableViewCell.swift
//  KelltonTask
//
//  Created by Ranjeet Raushan on 05/11/20.
//  Copyright © 2020 Ranjeet Raushan. All rights reserved.
//

import UIKit

class tableViewCell: UITableViewCell {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
