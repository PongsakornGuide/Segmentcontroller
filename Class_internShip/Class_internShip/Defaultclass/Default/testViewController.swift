//
//  testViewController.swift
//  Class_internShip
//
//  Created by Guide on 25/6/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class testViewController: DefaultContentVC {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        self.seqmentation(setView: "War1", setView2: "War2")
        if let vc = storyboard?.instantiateViewController(withIdentifier: "\(setView)"){
        self.addChild(vc)
            if viewTest.viewWithTag(99) == nil{
                viewTest.addSubview(vc.view)
            }
        }
        
        if let vc = storyboard?.instantiateViewController(withIdentifier: "\(setView2)"){
            self.addChild(vc)
            if viewTest.viewWithTag(99) == nil{
                viewTest.addSubview(vc.view)
            }
        }
        
    }
    
}
