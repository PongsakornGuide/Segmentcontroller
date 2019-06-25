
//
//  SimpleVC2.swift
//  Class_internShip
//
//  Created by Guide on 18/6/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class ProductListTV: DefaultContentVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.statusUsePullRefresh = true
        
        let content1 = ContentModel.init()
        content1.line1 = "Flutty Yarn Fleco Full-Zip Jacket"
        content1.line2 = "WE00-0024"
        content1.line3 = "790.00"
        content1.heightCell = 120
        
        let content2 = ContentModel.init()
        content2.line1 = "Jacket Flutty Yarn Fleco Full-Zip "
        content2.line2 = "WE00-0024"
        content2.line3 = "875.00"
        content2.heightCell = 120
        self.arrayContent.append(content1)
        self.arrayContent.append(content2)
        self.arrayContent.append(content1)
        self.arrayContent.append(content2)
        
        //Reload Data
        self.tbContent.reloadData()
        
        //        Set Delegate
        self.contentDelegate = self
        
        self.hideButtonBack()
        self.tabBarController?.tabBar.isHidden = false
        
    }
}

extension ProductListTV : DefaultContentVCDelegate
{
    func contentClick(_ position: Int) {
        let productFilter = self.storyboard!.instantiateViewController(withIdentifier: "ProductFilter") as! ProductFilter
        productFilter.contentClick = self.arrayContent[position]
        self.navigationController?.pushViewController(productFilter, animated: true)
    }
    
    func loadMoreContent() {
        
    }
    
    func pullRefresh() {
        
    }

}
