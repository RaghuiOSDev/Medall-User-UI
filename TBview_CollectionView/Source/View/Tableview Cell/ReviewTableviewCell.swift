//
//  ReviewTableviewCell.swift
//  TBview_CollectionView
//
//  Created by KMT on 10/25/21.
//  Copyright © 2021 KMT. All rights reserved.
//

import UIKit

class ReviewTableviewCell: UITableViewCell {

    @IBOutlet weak var reviewLable: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var download_button: customButton!
    @IBOutlet weak var book_button: customButton!
    @IBOutlet weak var upload_Button: customButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
