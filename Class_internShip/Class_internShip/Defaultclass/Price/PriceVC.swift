//
//  PriceVC.swift
//  Class_internShip
//
//  Created by Guide on 19/6/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class PriceVC: DefaultContentVC{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let vc = storyboard?.instantiateViewController(withIdentifier: "PurchaseTV"){
            viewTest.addSubview(vc.view)
            self.addChild(vc)
        }
        self.tabBarController?.tabBar.isHidden = false
    }

}
