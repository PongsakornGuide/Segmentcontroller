//
//  Payment.swift
//  Class_internShip
//
//  Created by Guide on 19/6/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class Payment: DefaultContentVC {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let vc = storyboard?.instantiateViewController(withIdentifier: "PaymentTransfer"){
            viewTest.addSubview(vc.view)
            self.addChild(vc)
        }
        self.tabBarController?.tabBar.isHidden = false
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
