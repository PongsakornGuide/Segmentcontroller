//
//  Test1.swift
//  Class_internShip
//
//  Created by Guide on 19/6/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class WarehouseDT1: DefaultContentVC {
    
        var contentClick:ContentModel?
        @IBOutlet weak var IbLabelDT: UILabel!
        @IBOutlet weak var IbLabelDT1: UILabel!
        @IBOutlet weak var IbLabelDT2: UILabel!
        @IBOutlet weak var IbLabelDT3: UILabel!
        @IBOutlet weak var IbLabelDT4: UILabel!
        @IBOutlet weak var IbLabelDT5: UILabel!
        override func viewDidLoad() {
        super.viewDidLoad()
            
        if contentClick != nil{
            IbLabelDT.text = contentClick?.line1
            IbLabelDT1.text = contentClick?.line2
            IbLabelDT2.text = contentClick?.line6
            IbLabelDT3.text = contentClick?.line4
            IbLabelDT4.text = contentClick?.line5
            IbLabelDT5.text = contentClick?.line3
            }
        // Do any additional setup after loading the view.
    }
}

