//
//  ProductFilter.swift
//  Class_internShip
//
//  Created by Guide on 18/6/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class ProductFilter: DefaultPushVC {
    var contentClick:ContentModel?
//    @IBOutlet weak var IbLabelDT: UILabel!
//    @IBOutlet weak var IbLabelDT2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setTitleLeft(titleLeft: "BACK")
        self.tabBarController?.tabBar.isHidden = false
    }


}
