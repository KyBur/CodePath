//
//  MovieTableViewCell.swift
//  Flix API
//
//  Created by Kyle Burns on 2/20/20.
//  Copyright © 2020 Kyle Burns. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        titleLabel.adjustsFontSizeToFitWidth = true
        descLabel.adjustsFontSizeToFitWidth = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
