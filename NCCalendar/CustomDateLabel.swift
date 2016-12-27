//
//  CustomDateButton.swift
//  NCCalendar
//
//  Created by NitinChadha on 25/07/16.
//  Copyright © 2016 NitinChadha. All rights reserved.
//

import UIKit
class CustomDateButton: UIButton {
    @IBInspectable var cornerRadius = CGFloat()
    @IBInspectable var borderWidth = CGFloat()
    @IBInspectable var horizontalPadding = CGFloat()
    @IBInspectable var borderColor = UIColor.greenColor()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if  (self.borderWidth > 0) {
            self.layer.masksToBounds = true;
            self.layer.borderWidth = self.borderWidth;
        }
        self.layer.cornerRadius = self.cornerRadius;
        self.layer.borderColor = self.borderColor.CGColor;
    }

    override func intrinsicContentSize() -> CGSize {
        var contentSize = super.intrinsicContentSize()
        contentSize.width += self.horizontalPadding * 2 ;
        return contentSize ;
    }
    
    
}
