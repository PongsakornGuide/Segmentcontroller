//
//  ButtonCellModel.swift
//  Class_internShip
//
//  Created by Guide on 17/6/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class ButtonCellModel {
    
    var title:String = ""
    var icon:UIImage?
//    var bgColor:UIColor = ColorHelper.color_slide_cell_btn_1
    
    init()
    {
        //init
    }
    
    init(title:String, icon_name:String)
    {
        //init
        self.title = title
        self.icon = UIImage.init(named: icon_name)
//        self.bgColor = bgColor
    }
}

