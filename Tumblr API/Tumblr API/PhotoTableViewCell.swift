//
//  PhotoTableViewCell.swift
//  Tumblr API
//
//  Created by Kyle Burns on 2/14/20.
//  Copyright © 2020 Kyle Burns. All rights reserved.
//

import UIKit
import AlamofireImage

class PhotoTableViewCell: UITableViewCell {

    @IBOutlet weak var myImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
