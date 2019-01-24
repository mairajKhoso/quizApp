//
//  custom.swift
//  quizApp
//
//  Created by Apple Macbook on 24/01/2019.
//  Copyright © 2019 Hivelet. All rights reserved.
//

import Foundation
class button : UIButton
{
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 1/UIScreen.main.nativeScale
        contentEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        layer.cornerRadius = frame.height/5
    }
    
}
class label : UILabel
{
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //border setting
        let myColor = UIColor.white
        layer.borderWidth = 1/UIScreen.main.nativeScale
        layer.borderColor = myColor.cgColor
        layer.cornerRadius = frame.height/7
        //text field opaque/background
        self.backgroundColor = UIColor(white: 1, alpha: 0.0)
        
        
    }
}
