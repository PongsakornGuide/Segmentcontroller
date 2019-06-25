//
//  PaymentTransfer.swift
//  Class_internShip
//
//  Created by Guide on 19/6/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class PaymentTransfer: DefaultContentVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let content1 = ContentModel.init()
        content1.line1 = "182000027"
        content1.line2 = "ธนาคารกสิกรไทย 132-4xxxxx-x นายวัฒชัย ชัชชนะ"
        content1.line3 = "รอการตรวจสอบ"
        content1.line4 = "1,790 บาท"
        content1.heightCell = 130
        
        let content2 = ContentModel.init()
        content2.line1 = "182000027"
        content2.line2 = "ธนาคารกสิกรไทย 132-4xxxxx-x นายวัฒชัย ชัชชนะ"
        content2.line3 = "รอการตรวจสอบ"
        content2.line4 = "1,790 บาท"
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
