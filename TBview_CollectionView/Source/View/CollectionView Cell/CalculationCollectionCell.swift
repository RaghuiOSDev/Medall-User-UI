//
//  CalculationCollectionCell.swift
//  TBview_CollectionView
//
//  Created by KMT on 10/25/21.
//  Copyright © 2021 KMT. All rights reserved.
//

import UIKit

class CalculationCollectionCell: UICollectionViewCell {
    @IBOutlet weak var cateogoryLable: UILabel!
    @IBOutlet weak var dateLable: UILabel!
    @IBOutlet weak var valueLable: UILabel!
    @IBOutlet weak var cateogoryImage: UIImageView!
    @IBOutlet weak var numberLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.borderColor = UIColor.init(red: 247/255, green: 247/255, blue: 247/255, alpha: 1).cgColor
        self.layer.borderWidth = 2
        self.layer.shadowColor = UIColor.init(red: 247/255, green: 247/255, blue: 247/255, alpha: 1).cgColor
       self.layer.shadowRadius = 5
       self.layer.shadowOpacity = 1
       self.layer.shadowOffset = CGSize(width: 0, height: 0)
        self.layer.masksToBounds = false
        self.clipsToBounds = false
        
        // Initialization code
    }

}
