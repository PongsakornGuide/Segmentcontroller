//
//  ContentTVCell.swift
//  KetShop
//
//  Created by Peerapong Ruangudom on 12/1/2562 BE.
//  Copyright © 2562 Peerapong Ruangudom. All rights reserved.
//

import UIKit
//import Charts
//import SwipeCellKit

protocol ContentTVCellDelegate: NSObjectProtocol {
    func click1(_ position: Int)
    func click2(_ position: Int)
    func click3(_ position: Int)
}

class ContentTVCell: SwipeTableViewCell {
    var contentTVCellDelegate: ContentTVCellDelegate?
//    @IBOutlet var pieChartView: PieChartView!
//    @IBOutlet var lineChartView: LineChartView!
    @IBOutlet weak var imageSelected: UIImageView!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var lblLine1: UILabel!
    @IBOutlet weak var lblLine2: UILabel!
    @IBOutlet weak var lblLine3: UILabel!
    @IBOutlet weak var lblLine4: UILabel!
    @IBOutlet weak var lblLine5: UILabel!
    @IBOutlet weak var lblLine6: UILabel!
    @IBOutlet weak var lblLine7: UILabel!
    @IBOutlet weak var lblLine8: UILabel!
    @IBOutlet weak var lblLine9: UILabel!
    @IBOutlet weak var lblLine10: UILabel!
    
    
    
    @IBOutlet weak var swLine1: UISwitch!
    @IBOutlet weak var tfLine1: UITextField!
    @IBOutlet weak var tfLine2: UITextField!
    @IBOutlet weak var tfLine3: UITextField!
    @IBOutlet weak var tfLine4: UITextField!
    @IBOutlet weak var tfLine5: UITextField!
    
    @IBOutlet weak var tvMutiLine1: UITextView!
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    
    @IBOutlet weak var viewHide1: UIView!
    @IBOutlet weak var lblHide1: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

    @IBAction func clickButton1(_ sender: UIButton) {
        contentTVCellDelegate?.click1(sender.tag)
    }
    
    @IBAction func clickButton2(_ sender: UIButton) {
        contentTVCellDelegate?.click2(sender.tag)
    }
    
    @IBAction func clickButton3(_ sender: UIButton) {
        contentTVCellDelegate?.click3(sender.tag)
    }
    
}
