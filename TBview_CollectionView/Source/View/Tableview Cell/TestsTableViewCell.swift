//
//  TestsTableViewCell.swift
//  TBview_CollectionView
//
//  Created by KMT on 10/25/21.
//  Copyright © 2021 KMT. All rights reserved.
//

import UIKit

class TestsTableViewCell: UITableViewCell {

    @IBOutlet weak var testLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
