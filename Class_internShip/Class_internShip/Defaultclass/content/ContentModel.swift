//
//  ContentModel.swift
//  KetShop
//
//  Created by Peerapong Ruangudom on 12/1/2562 BE.
//  Copyright © 2562 Peerapong Ruangudom. All rights reserved.
//

import UIKit

class ContentModel {
    
    //Value
    var chartLine1Color:UIColor?
    var chartLine2Color:UIColor?
    var chartLine3Color:UIColor?
    var chartLine4Color:UIColor?
    var chartLine5Color:UIColor?
    var chartLine6Color:UIColor?
    var chartLine7Color:UIColor?
//    var arrayGraphItem1:[GraphItem]?
//    var arrayGraphItem2:[GraphItem]?
//    var arrayGraphItem3:[GraphItem]?
//    var arrayGraphItem4:[GraphItem]?
//    var arrayGraphItem5:[GraphItem]?
//    var arrayGraphItem6:[GraphItem]?
//    var arrayGraphItem7:[GraphItem]?
    
    //Value PieChart
    var pieValues:[Double]?
    
    var content_type:String = "ContentTVCell1"
    
    var VALUE_ID = ""
    var isSelected = false
    
    var VALUE_KEY1 = ""
    var VALUE_KEY2 = ""
    var VALUE_KEY3 = ""
    
    var imageLocal1:UIImage?
    var imageLocal2:UIImage?
    var imageLocal3:UIImage?
    
    var image1:String = ""
    var image2:String = ""
    var image3:String = ""
    
    var isHideImage1 = false
    var isHideImage2 = false
    
    var line1:String = ""
    var line2:String = ""
    var line3:String = ""
    var line4:String = ""
    var line5:String = ""
    var line6:String = ""
    var line7:String = ""
    var line8:String = ""
    var line9:String = ""
    
    var tfLine1:String = ""
    var tfLine2:String = ""
    var tfLine3:String = ""
    var tfLine4:String = ""
    var tfLine5:String = ""
    
    var line1Color:UIColor?
    var line2Color:UIColor?
    var line3Color:UIColor?
    var line4Color:UIColor?
    var line5Color:UIColor?
    var line6Color:UIColor?
    var line7Color:UIColor?
    
    var imgBgColor1:UIColor?
    var imgBgColor2:UIColor?
    var imgBgColor3:UIColor?
    
    var mutiLine1:String = ""
    
    var statusViewHide1 = true
    
    var heightCell = 50.0
    
    var PageSG1:UIView!
    var PageSG2:UIView!
    
    
    init()
    {
        //init
    }
    
    func setContentType(num_type:Int) {
        content_type = "ContentTVCell\(num_type)"
    }
    
    func setImage1(value:String?) {
        if value != nil
        {
            self.image1 = value ?? ""
        }
    }
}
