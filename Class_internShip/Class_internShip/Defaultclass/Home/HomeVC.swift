//
//  HomeVC.swift
//  Class_internShip
//
//  Created by Guide on 19/6/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class HomeVC: DefaultContentVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let content1 = ContentModel.init()
        content1.image1 = "brown.png"
        content1.image2 = "brown.png"
        content1.line1 = "Flutty Yarn Fleco Full-Zip Jacket"
        content1.line2 = "WE00-0024"
        content1.line3 = "790.00"
        content1.line4 = "29"
        content1.heightCell = 180
        
        let content2 = ContentModel.init()
        content2.image1 = "brown.png"
        content2.image2 = "brown.png"
        content2.line1 = "Jacket Flutty Yarn"
        content2.line2 = "AC00-0021"
        content2.line3 = "834.00"
        content2.line4 = "27"
        content2.heightCell = 180
        
        
        
        self.arrayContent.append(content1)
        self.arrayContent.append(content2)
        //Reload Data
        self.tbContent.reloadData()
        
        //        Set Delegate
//        self.contentDelegate = self
        
        self.hideButtonBack()
        self.tabBarController?.tabBar.isHidden = false
    }
}
