//
//  departTableViewCell.swift
//  hgcenew
//
//  Created by Mayank Vadaliya on 01/03/19.
//  Copyright © 2019 Mayank Vadaliya. All rights reserved.
//

import UIKit

class departTableViewCell: UITableViewCell {

    @IBOutlet weak var imagedepart: UIImageView!
    @IBOutlet weak var lblname: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
