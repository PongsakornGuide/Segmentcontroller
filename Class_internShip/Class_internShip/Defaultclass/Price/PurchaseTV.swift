//
//  PurchaseTV.swift
//  Class_internShip
//
//  Created by Guide on 19/6/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class PurchaseTV: DefaultContentVC{

    override func viewDidLoad() {
        
        self.statusUsePullRefresh = true
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let content1 = ContentModel.init()
        content1.line1 = "1812000076"
        content1.line2 = "diw_@hotmail.com"
        content1.line3 = "รอชำระตัง"
        content1.line4 = "Aitthi Arsa"
        content1.line5 = "1,790 บาท"
        content1.line6 = "084-9900099"
        content1.line7 = "โอนผ่านธนาคาร"
        content1.line8 = "admin"
        content1.line9 = "-"
        content1.heightCell = 130
        
        let content2 = ContentModel.init()
        content2.line1 = "2120000732"
        content2.line2 = "User_1@hotmail.com"
        content2.line3 = "จ่ายแล้ว"
        content2.line4 = "Thanawan Mokong"
        content2.line5 = "2,340 บาท"
        content2.heightCell = 130
        //add array content
        self.arrayContent.append(content1)
        self.arrayContent.append(content2)
        self.arrayContent.append(content1)
        self.arrayContent.append(content2)
        self.arrayContent.append(content1)
        self.arrayContent.append(content2)
        self.arrayContent.append(content1)
        self.arrayContent.append(content2)
        self.tabBarController?.tabBar.isHidden = false
        
        //        Set Delegate
        self.contentDelegate = self
    }
}

extension PurchaseTV : DefaultContentVCDelegate
{
    func contentClick(_ position: Int) {
        let orderListDT = self.storyboard!.instantiateViewController(withIdentifier:
            "OrderListDT") as! OrderListDT
        orderListDT.contentClick = self.arrayContent[position]
        self.navigationController?.pushViewController(orderListDT, animated: true)
    }
    func loadMoreContent() {
        
    }
    
    func pullRefresh() {
        
    }
    
}
