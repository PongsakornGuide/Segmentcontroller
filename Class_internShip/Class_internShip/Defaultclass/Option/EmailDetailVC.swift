//
//  EmailDetailVC.swift
//  Class_internShip
//
//  Created by Guide on 17/6/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class EmailDetailVC: DefaultPushVC {
    var contentClick:ContentModel?
    
    @IBOutlet weak var IbLabelDT1: UILabel!
    @IBOutlet weak var IbLabelDT2: UILabel!
    @IBOutlet weak var IbLabelDT3: UILabel!
    override func viewDidLoad() {
        self.setTitleLeft(titleLeft: "ตัวกรองการค้นหาสินค้า")
        
        super.viewDidLoad()
        
        if contentClick != nil{
            IbLabelDT1.text = contentClick?.line2
            IbLabelDT2.text = contentClick?.line3
            IbLabelDT3.text = contentClick?.line4
            
        }
        self.tabBarController?.tabBar.isHidden = false
    }


}
