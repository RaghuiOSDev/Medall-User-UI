//
//  HeaderTableViewCell.swift
//  TBview_CollectionView
//
//  Created by KMT on 10/27/21.
//  Copyright © 2021 KMT. All rights reserved.
//

import UIKit

class HeaderTableViewCell: UITableViewCell {
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var taskLabel: UILabel!
    @IBAction func processButton(_ sender: UIButton){
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
