//
//  SimpleVC.swift
//  Class_internShip
//
//  Created by Guide on 18/6/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class WarehouseTV: DefaultContentVC {

     override func viewDidLoad() {
      super.viewDidLoad()
        self.statusUsePullRefresh = true
        // Do any additional setup after loading the view.
        let content1 = ContentModel.init()
        content1.imageLocal1 = UIImage(named: "AppIcon")
        content1.line1 = "Flutty Yarn Fleco Full-Zip Jacket"
        content1.line2 = "WE00-0024"
        content1.line3 = "790.00"
        content1.line4 = "29"
        content1.line5 = "298"
        content1.line6 = "250"
        content1.heightCell = 200
        
        let content2 = ContentModel.init()
        content2.imageLocal1 = UIImage(named: "AppIcon")
        content2.line1 = "Jacket Flutty Yarn"
        content2.line2 = "AC00-0021"
        content2.line3 = "834.00"
        content2.line4 = "27"
        content2.line5 = "790.00"
        content2.line6 = "250"
        content2.heightCell = 200
        self.arrayContent.append(content1)
        self.arrayContent.append(content2)
        self.arrayContent.append(content1)
        self.arrayContent.append(content2)
        self.arrayContent.append(content1)
        self.arrayContent.append(content2)
        //Reload Data
        self.tbContent.reloadData()
        
//        Set Delegate
        self.contentDelegate = self
        
        self.hideButtonBack()
        self.tabBarController?.tabBar.isHidden = false
    }

}

extension WarehouseTV : DefaultContentVCDelegate
{
    func contentClick(_ position: Int) {
        let warehouseDT = self.storyboard!.instantiateViewController(withIdentifier:
        "WarehouseDT") as! WarehouseDT
        warehouseDT.contentClick = self.arrayContent[position]
        self.navigationController?.pushViewController(warehouseDT, animated: true)
    }
    func loadMoreContent() {

    }

    func pullRefresh() {

    }

}
