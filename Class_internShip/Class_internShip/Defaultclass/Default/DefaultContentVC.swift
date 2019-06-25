//
//  DefaultContentVC.swift
//  Class_internShip
//
//  Created by Guide on 13/6/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit
protocol ContentVCScrollDelegate: NSObjectProtocol {
    func scrollMoveUp(_ yPosition: CGFloat)
    func scrollMoveDown(_ yPosition: CGFloat)
    func noScroll(_ yPosition: CGFloat)
}

protocol DefaultContentVCDelegate: NSObjectProtocol {
    func contentClick(_ position: Int)
    func loadMoreContent()
    func pullRefresh()
}

protocol SetupOtherInCellDelegate: NSObjectProtocol {
    func setupOtherInCell(_ positionCell: Int, contentTvCell:ContentTVCell)
}


class DefaultContentVC:DefaultPushVC,UITableViewDataSource,UITableViewDelegate,SwipeTableViewCellDelegate,UICollectionViewDelegate,UICollectionViewDataSource {
 
    
    @IBOutlet weak var tbContent: UITableView!
    @IBOutlet weak var scontrol: UISegmentedControl!
    
    var imgeArray = [UIImage(named: "Guide1"),UIImage(named: "Guide1"),UIImage(named: "Guide1"),UIImage(named: "Guide1")]
    
    
    var statusCanSlideCell = false
    var statusUsePullRefresh = false
    var arrayButtonCell = [ButtonCellModel]()
    var arrayContent = [ContentModel]()
    var contentDelegate: DefaultContentVCDelegate?
    let refreshControl = UIRefreshControl()
    var contentTVCellDelegate:ContentTVCellDelegate?
    var setupOtherInCellDelegate:SetupOtherInCellDelegate?
    
    @IBOutlet weak var viewTest:UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        Title
        self.setTitleLeft(titleLeft: self.titleOnNav)
//        Refresh
//        if tbContent != nil
//        {
//            //Default View
//            self.tbContent.showsVerticalScrollIndicator = false
//
//            if statusUsePullRefresh
//            {
//                //Hide
//                tbContent.addSubview(refreshControl)
//                refreshControl.addTarget(self, action: #selector(refresh), for: .valueChanged)
//            }
//        }
//         let vc = storyboard?.instantiateViewController(withIdentifier: "SimpleVC") {
//            viewTest.addSubview(vc.view)
//        }
//        self.storyboard?.instantiateViewController(withIdentifier: "WarehouseTV")
    }

    @objc func refresh() {
        self.contentDelegate?.pullRefresh()
    }
    

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Use
        if self.arrayContent.count>indexPath.row
        {
            //Content
            let content = self.arrayContent[indexPath.row]
            let cell = tableView.dequeueReusableCell(withIdentifier: content.content_type) as! ContentTVCell
            setContentToCell(indexPath.row,cell, content)
            
            //Swift Kit Delegate
            if statusCanSlideCell
            {
                cell.delegate = self
            }
            
            return cell
        }
        else
        {
            //Content Empty
            let cell = tableView.dequeueReusableCell(withIdentifier: "ContentTVCell1") as! ContentTVCell
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        //Click
        self.contentDelegate?.contentClick(indexPath.row)

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Check Null
        if arrayContent.count == 0
        {
            
            let backgroundView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: self.tbContent.bounds.width, height: self.tbContent.bounds.height))
            backgroundView.backgroundColor = UIColor.white
            let imageNoData = UIImageView.init(image: UIImage.init(named: "nodata"))
            imageNoData.frame = CGRect.init(x: self.tbContent.bounds.width/2-60, y: self.tbContent.bounds.height/2-60, width: 120, height: 120)
            //imageNoData.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor).isActive = true
            //imageNoData.centerYAnchor.constraint(equalTo: backgroundView.centerYAnchor).isActive = true
            backgroundView.addSubview(imageNoData)
            self.tbContent.backgroundView = backgroundView
        }
        else
        {
            self.tbContent.backgroundView = nil
        }
        
        return arrayContent.count
    }
    
  
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        //Use
        if self.arrayContent.count>indexPath.row
        {
            //Content
            let content = self.arrayContent[indexPath.row]
            return CGFloat(content.heightCell);
            
        }
        else
        {
            //Empty
            return 44
        }
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
        guard orientation == .right else { return nil }
        
        if self.arrayButtonCell.count > 0 && self.statusCanSlideCell
        {
            //Button 1
            let buttonCell1 = self.arrayButtonCell[0]
            let swipeAction1 = SwipeAction(style: .default, title: buttonCell1.title) { action, indexPath in
                // handle action by updating model with deletion
                self.contentTVCellDelegate?.click1(indexPath.row)
            }
//            swipeAction1.backgroundColor = buttonCell1.bgColor
            swipeAction1.image = buttonCell1.icon
            
            //Button 2
            if self.arrayButtonCell.count > 1
            {
                let buttonCell2 = self.arrayButtonCell[1]
                let swipeAction2 = SwipeAction(style: .default, title: buttonCell2.title) { action, indexPath in
                    // handle action by updating model with deletion
                    self.contentTVCellDelegate?.click2(indexPath.row)
                }
//                swipeAction2.backgroundColor = buttonCell2.bgColor
                swipeAction2.image = buttonCell2.icon
                
                //Return
                return [swipeAction1,swipeAction2]
            }
            
            //IF Have 3
            return [swipeAction1]
        }
        else
        {
            return nil
        }
    }
    
    
    
//    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
//        return true
//    }
    
//
    fileprivate func setContentToCell(_ position: Int,_ cell: ContentTVCell, _ content: ContentModel) {
        
        //Set Default Selection
        cell.selectionStyle = .none
        
//        if cell.pieChartView != nil
//        {
//            //Setup
//            self.setupPieChart(pieChart: cell.pieChartView)
//            if content.pieValues != nil
//            {
//                self.setValueWithPieChart(pieValues: content.pieValues!, pieChartView: cell.pieChartView)
//            }
//        }
//        if cell.lineChartView != nil
//        {
//            //Setup
//            self.setupLineChart(lineChart: cell.lineChartView, content)
//            //            if content.pieValues != nil
//            //            {
//            //                self.setDataPieChart(pieValues: content.pieValues!, pieChartView: cell.pieChartView)
//            //            }
//        }
        
//        if cell.view1 != nil
//        {
//            //Line1
//        }
        
        //Cell
        if cell.image1 != nil
        {
            if content.imageLocal1 != nil
            {
                cell.image1.image = content.imageLocal1

                //For Qrcode
                cell.image1.layer.magnificationFilter = CALayerContentsFilter.nearest
            }
                //Bg
            else if content.imgBgColor1 != nil
            {
                cell.image1.backgroundColor = content.imgBgColor1
            }
            else
            {
                print("helloWorld")
//                cell.image1.sd_setImage(with: URL(string: content.image1 ), placeholderImage: UIImage(named: DataHelper.imgBlank))
            }
            //Set Hide
            cell.image1.isHidden = content.isHideImage1
        }
        if cell.image2 != nil
        {
            if content.imageLocal2 != nil
            {
                cell.image2.image = content.imageLocal2
            }
            else
            {
                 print("helloWorld")
//                cell.image2.sd_setImage(with: URL(string: content.image2 ), placeholderImage: UIImage(named: DataHelper.imgBlank))
            }

            //Bg
            if content.imgBgColor2 != nil
            {
                cell.image2.backgroundColor = content.imgBgColor2
            }

            //Set Hide
            cell.image2.isHidden = content.isHideImage2
        }
        
        if cell.lblLine1 != nil
        {
            cell.lblLine1.text = content.line1
            if content.line1Color != nil
            {
                cell.lblLine1.textColor = content.line1Color
            }
        }
        
        if cell.lblLine2 != nil
        {
        cell.lblLine2.text = content.line2
        if content.line2Color != nil
            {
            cell.lblLine2.textColor = content.line2Color
            }
        }
        if cell.lblLine3 != nil
        {
            cell.lblLine3.text = content.line3
            if content.line3Color != nil
            {
                cell.lblLine3.textColor = content.line3Color
            }
        }
        
        if cell.lblLine4 != nil
        {
            cell.lblLine4.text = content.line4
        }
        
        if cell.lblLine5 != nil
        {
            cell.lblLine5.text = content.line5
        }
        if cell.lblLine6 != nil
        {
            cell.lblLine6.text = content.line6
        }
        if cell.lblLine7 != nil
        {
            cell.lblLine7.text = content.line7
        }
        if cell.lblLine8 != nil
        {
            cell.lblLine8.text = content.line8
        }
        if cell.lblLine9 != nil
        {
            cell.lblLine9.text = content.line9
        }
        
        //Line Color
        if content.line1Color != nil
        {
            cell.lblLine1.textColor = content.line1Color
        }
        
        //Switch
        if cell.swLine1 != nil
        {
            cell.swLine1.isOn = content.isSelected
        }

        //TF
        if cell.tfLine1 != nil
        {
            cell.tfLine1.text = content.tfLine1
        }
        if cell.tfLine2 != nil
        {
            cell.tfLine2.text = content.tfLine2
        }
        if cell.tfLine3 != nil
        {
            cell.tfLine3.text = content.tfLine3
        }
        if cell.tfLine4 != nil
        {
            cell.tfLine4.text = content.tfLine4
        }
        if cell.tfLine5 != nil
        {
            cell.tfLine5.text = content.tfLine5
        }

        //MutiLine
        if cell.tvMutiLine1 != nil
        {
            cell.tvMutiLine1.text = content.mutiLine1
        }

        //Button
        if cell.btn1 != nil
        {
            cell.btn1.tag = position
        }
        if cell.btn2 != nil
        {
            cell.btn2.tag = position
        }
        if cell.btn3 != nil
        {
            cell.btn3.tag = position
        }
        
//        View Hide
        if cell.viewHide1 != nil
        {
            cell.viewHide1.isHidden = true
            if !content.statusViewHide1
            {
                cell.lblHide1.text = "Out of Stock"
                cell.viewHide1.isHidden = false
            }

            if content.isSelected
            {
                cell.lblHide1.text = "Selected"
//                cell.lblHide1.textColor = ColorHelper.color_tomato
            }
        }
        
        //View Selected
        if cell.imageSelected != nil
        {
            cell.imageSelected.isHidden = true
            if content.isSelected
            {
                //Show
                cell.imageSelected.isHidden = false
            }
        }

        //Delegate
        cell.contentTVCellDelegate = contentTVCellDelegate

        //Delegate For Other in Cell
        if setupOtherInCellDelegate != nil
        {
            setupOtherInCellDelegate?.setupOtherInCell(position, contentTvCell: cell)
        }
    }
    
//
//        func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//            if section == 1
//            {
//                let headerProductCell = tableView.dequeueReusableCell(withIdentifier: "HeaderProductCell") as! HeaderProductCell
//                headerProductCell.lblHeader.text = DataHelper.sharedInstance.categorySelected.name!+StringHelper.getStringByKey(STRING_KEY: "OPEN_NEW_LASTED")
//                return headerProductCell
//            }
//            else
//            {
//                return UIView.init(frame:CGRect(x: 0, y: 0, width: 0, height: 0))
//            }
//        }
//
//        func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//            if section == 0
//            {
//                return 0
//            }
//            else
//            {
//                return 40.0
//            }
//        }
//    //Load More
//    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
//        let lastElement = self.arrayContent.count - 1
//        //print("Check : \(indexPath.row) == \(lastElement)")
//        if indexPath.row == lastElement {
//
//            //Load More
//            if self.statusLoadMore
//            {
//                //Page
//                page = page+1
//
//                //Load More
//                self.contentDelegate?.loadMoreContent()
//
//                //Not Sure
//                //searchBaseVCDelegate?.loadMoreProduct()
//                //self.loadProduct(self.keyWords)
//            }
//        }
//    }

    // this delegate is called when the scrollView (i.e your UITableView) will start scrolling
//    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
//        self.lastContentOffset = scrollView.contentOffset.y
//    }

    // while scrolling this delegate is being called so you may now check which direction your scrollView is being scrolled to
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//
//        //print("scrollViewDidScroll up : \(scrollView.contentOffset.y)")
//
//        if (self.lastContentOffset < scrollView.contentOffset.y) {
//
//            //            // did move up
//            //            contentVCScrollDelegate?.scrollMoveUp(scrollView.contentOffset.y)
//            //
//            //            //Check Table Top
//            //            let yOffset = scrollView.contentOffset.y
//            //            if yOffset >= 0 {
//            //                self.tbContent.isScrollEnabled = false
//            //            }
//            //print("move up : \(scrollView.contentOffset.y)")
//        } else if (self.lastContentOffset > scrollView.contentOffset.y) {
//            //contentVCScrollDelegate?.scrollMoveDown(scrollView.contentOffset.y)
//            // did move down
//            //print("move down : \(scrollView.contentOffset.y)")
//        } else {
//            //contentVCScrollDelegate?.noScroll(scrollView.contentOffset.y)
//            // didn't move
//            //print("don't move : \(scrollView.contentOffset.y)")
//        }
//    }

    @IBAction func actionSeqment(_ sender: Any) {
        switch scontrol.selectedSegmentIndex {
        case 0:
            if let vc = storyboard?.instantiateViewController(withIdentifier: "WarehouseTV") {
                self.addChild(vc)
                viewTest.addSubview(vc.view)
            }
        case 1:
            if let vc = storyboard?.instantiateViewController(withIdentifier: "ProductListTV") {
                self.addChild(vc)
                viewTest.addSubview(vc.view)
            }
        default:
            break
        }
       
    }
    
    
    @IBAction func actionSeqment1(_ sender: Any){
        switch scontrol.selectedSegmentIndex{
        case 0:
        if let vc = storyboard?.instantiateViewController(withIdentifier: "WarehouseDT1") {
        self.addChild(vc)
        viewTest.addSubview(vc.view)
        }
        case 1:
        if let vc = storyboard?.instantiateViewController(withIdentifier: "WarehouseDT2") {
        self.addChild(vc)
        viewTest.addSubview(vc.view)
        }
       default:
        break
        }
    }    
    @IBAction func actionSeqment2(_ sender: Any) {
        switch scontrol.selectedSegmentIndex {
        case 0:
            if let vc = storyboard?.instantiateViewController(withIdentifier: "PurchaseTV") {
                self.addChild(vc)
                viewTest.addSubview(vc.view)
            }
        case 1:
            if let vc = storyboard?.instantiateViewController(withIdentifier: "SharedOrderTV") {
                self.addChild(vc)
                viewTest.addSubview(vc.view)
            }
        default:
            break
        }
    }
    
    @IBAction func actionSeqment3(_ sender: Any) {
        switch scontrol.selectedSegmentIndex {
        case 0:
            if let vc = storyboard?.instantiateViewController(withIdentifier: "PaymentTransfer") {
                self.addChild(vc)
                viewTest.addSubview(vc.view)
            }
        case 1:
            if let vc = storyboard?.instantiateViewController(withIdentifier: "PaymentAuto") {
                self.addChild(vc)
                viewTest.addSubview(vc.view)
            }
        default:
            break
        }
        
    }
    
//    func setTitleLeft(titleLeft:String){
//        //Set Title Left
//        let titleLabel = UILabel(frame: CGRect(x: 50, y: 0, width: view.frame.width - 32, height: view.frame.height))
//        titleLabel.text = "  \(titleLeft)"
//        titleLabel.textColor = UIColor.black
//        //titleLabel.font = UIFont.systemFont(ofSize: 20)
//        titleLabel.font = UIFont.boldSystemFont(ofSize: 20.0)
//        //titleLabel.font = UIFont.systemFont(ofSize: 20)
//        navigationItem.titleView = titleLabel
//    }

    
    func seqmentation(setView:String,setView2:String){
        switch scontrol.selectedSegmentIndex {
        case 0:
            viewTest.isHidden = true
            break
        case 1:
            viewTest.isHidden = false
            break
        default:
            break
            
        }
    }
    
    
//    @IBAction func testxx(_ sender: Any) {
//        switch scontrol.selectedSegmentIndex {
//        case 0:
//            if let vc = storyboard?.instantiateViewController(withIdentifier: "") {
//                self.addChild(vc)
//                viewTest.addSubview(vc.view)
//            }
//        case 1:
//            if let vc = storyboard?.instantiateViewController(withIdentifier: "") {
//                self.addChild(vc)
//                viewTest.addSubview(vc.view)
//            }
//        default:
//            break
//        }
//    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgeArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCVC", for: indexPath)as! ImageCVC
        cell.imagImage.image = imgeArray[indexPath.row]
        return cell
    }
    
    
}
