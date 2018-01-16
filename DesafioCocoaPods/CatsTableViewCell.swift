//
//  CatsTableViewCell.swift
//  DesafioCocoaPods
//
//  Created by Swift on 16/01/2018.
//  Copyright © 2018 Corporate. All rights reserved.
//

import UIKit

class CatsTableViewCell: UITableViewCell {

    @IBOutlet weak var imageViewCats: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
