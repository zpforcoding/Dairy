//
//  TextFiledAttr.swift
//  Daily
//
//  Created by test on 2018/9/15.
//  Copyright © 2018年 test. All rights reserved.
//

import UIKit

class TextFiledAttr: UITextField {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.layer.borderWidth = 1
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 25
//        self.setValue(UIColor.init(red: 255 / 255, green: 255 / 255, blue: 255 / 255, alpha: 1), forKeyPath: "_placeholderLabel.textColor")
    }

}
