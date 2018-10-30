//
//  BorderButton.swift
//  Swoosh App
//
//  Created by Jose Hernandez on 9/20/18.
//  Copyright © 2018 Jose Hernandez. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
        
    }

}
