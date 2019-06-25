//
//  SharedOrderTV.swift
//  Class_internShip
//
//  Created by Guide on 19/6/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class SharedOrderTV: DefaultContentVC {
    override func viewDidLoad() {
        super.viewDidLoad()

        self.statusUsePullRefresh = true
        // Do any additional setup after loading the view.
        
        let content1 = ContentModel.init()
        content1.line1 = "(16/10/18 17:30:41)"
        content1.line2 = "-"
        content1.line3 = "Pending"
        content1.line4 = "Aitthi Arsa"
        content1.line5 = "1,290"
        content1.heightCell = 130
        
        let content2 = ContentModel.init()
        content2.line1 = "(19/10/18 01:20:59)"
        content2.line2 = "User_1@hotmail.com"
        content2.line3 = "Pending"
        content2.line4 = "Aitthi Arsa"
        content2.line5 = "1,290"
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
        
    }
}
