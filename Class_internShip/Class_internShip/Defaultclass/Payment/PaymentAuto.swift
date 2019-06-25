//
//  PaymentAuto.swift
//  Class_internShip
//
//  Created by Guide on 19/6/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class PaymentAuto: DefaultContentVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let content1 = ContentModel.init()
        content1.line1 = "GBPay"
        content1.line2 = "Create :2018-11-08 10:50:10"
        content1.line3 = "gbp014567000"
        content1.line4 = "Pedding"
        content1.line5 = "Update :2019-12-09 09:39:28"
        content1.line6 = "2,590 บาท"
        content1.heightCell = 130
        
        let content2 = ContentModel.init()
        content2.line1 = "CreditCard"
        content2.line2 = "Create :2018-11-08 01:40:30"
        content2.line3 = "gbp014567000"
        content2.line4 = "Pedding"
        content2.line5 = "Update :2018-17-08 07:30:40"
        content2.line6 = "2,590 บาท"
        content2.heightCell = 130
        
        
        
        self.arrayContent.append(content1)
        self.arrayContent.append(content2)
        self.arrayContent.append(content1)
        self.arrayContent.append(content2)
        self.arrayContent.append(content1)
        self.arrayContent.append(content2)
        
        //Reload Data
        //        self.tbContent.reloadData()
        
        //        Set Delegate
        //        self.contentDelegate = self
        
        self.hideButtonBack()
        self.tabBarController?.tabBar.isHidden = false
    }
}
