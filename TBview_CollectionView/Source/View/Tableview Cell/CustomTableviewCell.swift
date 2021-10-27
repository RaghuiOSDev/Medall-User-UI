//
//  CustomTableviewCell.swift
//  TBview_CollectionView
//
//  Created by KMT on 10/25/21.
//  Copyright © 2021 KMT. All rights reserved.
//

import UIKit

class CustomTableviewCell: UITableViewCell {
    var categoryImages = [UIImage(named: "water"),UIImage(named: "night"),UIImage(named: "walk")]
    var dates = ["27/7/20","27/7/20","30/8/20"]
    var category = ["Water","Sleep","Walk"]
    var numbers = ["2","7","600"]
    var values = ["bottle","hrs","steps"]
    @IBOutlet weak var details_collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
            details_collectionView.register(UINib(nibName: "CalculationCollectionCell", bundle: nil), forCellWithReuseIdentifier: "CalculationCollectionCellID")
        details_collectionView.delegate = self
        details_collectionView.dataSource = self
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
extension CustomTableviewCell: UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = details_collectionView.dequeueReusableCell(withReuseIdentifier: "CalculationCollectionCellID", for: indexPath) as! CalculationCollectionCell
        cell.cateogoryImage.image = categoryImages[indexPath.row]
        cell.dateLable.text = dates[indexPath.row]
        cell.cateogoryLable.text = category[indexPath.row]
        cell.numberLabel.text = numbers[indexPath.row]
        cell.valueLable.text = values[indexPath.row]
        cell.layer.cornerRadius = cell.frame.height/8
        if indexPath.row == 0{
            cell.cateogoryLable.textColor = UIColor.white
            cell.dateLable.textColor = UIColor.white
            cell.numberLabel.textColor = UIColor.white
            cell.valueLable.textColor = UIColor.white
            cell.layer.backgroundColor = UIColor.init(red: 0/255, green: 181/255, blue: 237/255, alpha: 1).cgColor
    
        }else if indexPath.row == 1{
            cell.layer.backgroundColor = UIColor.white.cgColor
            cell.cateogoryLable.textColor = UIColor.blue
            cell.dateLable.textColor = UIColor.gray
            cell.numberLabel.textColor = UIColor.black
            cell.valueLable.textColor = UIColor.black
            cell.layer.borderWidth = 1.2
            cell.layer.shadowColor = UIColor.gray.cgColor
            cell.layer.borderColor = UIColor.gray.cgColor
            
        }else{
            cell.cateogoryLable.textColor = UIColor.white
            cell.dateLable.textColor = UIColor.white
            cell.numberLabel.textColor = UIColor.white
            cell.valueLable.textColor = UIColor.white
            cell.layer.backgroundColor = UIColor.init(red: 0/255, green: 181/255, blue: 237/255, alpha: 1).cgColor
        }
       
        return cell
    }
}
