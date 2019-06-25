//
//  ViewController.swift
//  Class_internShip
//
//  Created by Guide on 13/6/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class ViewController: DefaultContentVC {
    override func viewDidLoad() {
        
        self.statusUsePullRefresh = true
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let content1 = ContentModel.init()
        content1.line1 = "รายชื่อลูกค้า"
        content1.heightCell = 50
        
        let content2 = ContentModel.init()
        content2.line1 = "จัดการทีม"
        content2.heightCell = 50
        
        let content3 = ContentModel.init()
        content3.line1 = "จัดการส่ง"
        content3.heightCell = 50
        
        let content4 = ContentModel.init()
        content4.line1 = "ส่วนเสริม"
        content4.line2 = "Zortout"
        content4.line3 = "SCB Easy"
        content4.line4 = "PEAK Account"
        content4.heightCell = 50
        //add array content
        self.arrayContent.append(content1)
        self.arrayContent.append(content2)
        self.arrayContent.append(content3)
        self.arrayContent.append(content4)

        
        //Reload Data
        self.tbContent.reloadData()
        
//        Set Delegate
        self.contentDelegate = self
        
        self.hideButtonBack()
        self.tabBarController?.tabBar.isHidden = false
    }
}
extension ViewController : DefaultContentVCDelegate
{

    func contentClick(_ position: Int) {

        //Push
        let emailDetailVC = self.storyboard!.instantiateViewController(withIdentifier: "EmailDetailVC") as! EmailDetailVC
        emailDetailVC.contentClick = self.arrayContent[position]
        self.navigationController?.pushViewController(emailDetailVC, animated: true)

        //Show
        //        DialogHelper.sharedInstance.showDialogWaringWithTitle(title: "Title", detail: "Click Row : \(position)")
    }

    func loadMoreContent() {

    }

    func pullRefresh() {

    }



}
