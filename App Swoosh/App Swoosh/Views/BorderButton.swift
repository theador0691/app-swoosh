//
//  BorderButton.swift
//  App Swoosh
//
//  Created by Andrew Taylor on 14/08/2017.
//  Copyright © 2017 Andrew Taylor. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
