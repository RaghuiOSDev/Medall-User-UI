//
//  Button Class.swift
//  TBview_CollectionView
//
//  Created by KMT on 10/25/21.
//  Copyright © 2021 KMT. All rights reserved.
//

import Foundation
import UIKit

class customButton: UIButton {

    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }

    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            self.clipsToBounds = true
            self.layer.masksToBounds = true
        }
    }

    @IBInspectable var cornerRadiusByHeight: Bool = false {
        didSet {
            layer.cornerRadius = self.frame.size.height/2
        }
    }

    @IBInspectable var roundButton: Bool = false {
        didSet {
            layer.cornerRadius = self.frame.size.width / 2
            self.clipsToBounds = true
            self.layer.masksToBounds = true
        }
    }


    @IBInspectable var shadowColor: UIColor = UIColor.clear {

        didSet {

            layer.shadowColor = shadowColor.cgColor
            layer.masksToBounds = false
        }
    }


    @IBInspectable var shadowOpacity: CGFloat = 0.0 {

        didSet {

            layer.shadowOpacity = Float(shadowOpacity.hashValue)
            layer.masksToBounds = false
        }
    }

    @IBInspectable var shadowRadius: CGFloat = 0.0 {

        didSet {

            layer.shadowOpacity = Float(shadowRadius.hashValue)
            layer.masksToBounds = false
        }
    }

    override internal func awakeFromNib() {
        super.awakeFromNib()
    }

}
