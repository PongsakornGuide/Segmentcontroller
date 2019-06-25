//
//  TestViewController.swift
//  Class_internShip
//
//  Created by Guide on 17/6/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit
class ProductVC: DefaultContentVC {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let vc = storyboard?.instantiateViewController(withIdentifier: "WarehouseTV"){
            viewTest.addSubview(vc.view)
            self.addChild(vc)
        }
        self.tabBarController?.tabBar.isHidden = false
    }
}
