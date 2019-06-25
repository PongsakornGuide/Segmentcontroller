//
//  DataHelper.swift
//  Class_internShip
//
//  Created by Guide on 17/6/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class DataHelper{
    
    //Check Screen
    //    if UIDevice().userInterfaceIdiom == .phone {
    //    switch UIScreen.main.nativeBounds.height {
    //    case 1136:
    //    print("iPhone 5 or 5S or 5C")
    //    case 1334:
    //    print("iPhone 6/6S/7/8")
    //    case 1920, 2208:
    //    print("iPhone 6+/6S+/7+/8+")
    //    case 2436:
    //    print("iPhone X, Xs")
    //    case 2688:
    //    print("iPhone Xs Max")
    //    case 1792:
    //    print("iPhone Xr")
    //    default:
    //    print("unknown")
    //    }
    //    }
    
    //Check
    //let statusHave = self.dataProductSelected.contains { $0.id == productClick.id }
    
    //            //FOund Object
    //            if let productFound = self.dataProductSelected.first(where: {$0.id == productClick.id}){
    //                //Found
    //                productFound.qty = productFound.qty+1
    //            } else {
    //                //Not Found
    //            }
    //
    //MODE Default
    static let MODE_ORDER = "MODE_ORDER"
    static let MODE_ORDER_LINK = "MODE_ORDER_LINK"
    static let MODE_ORDER_TRACKING_CODE = "MODE_ORDER_TRACKING_CODE"
    static let MODE_EDIT_ORDER_LINK = "MODE_EDIT_ORDER_LINK"
    static let MODE_ORDER_CASH = "MODE_ORDER_CASH"
    static let MODE_ORDER_NORMAL = "MODE_ORDER_NORMAL"
    //MODE Default
    static let MODE_CREATE = "MODE_CREATE"
    static let MODE_EDIT = "MODE_EDIT"
    //KEY APP
    static let KEY_STATUS_LOGIN = "KEY_STATUS_LOGIN"
    static let KEY_FIRST_TIME = "KEY_FIRST_TIME"
    static let KEY_ACCESS_TOKEN = "KEY_ACCESS_TOKEN"
    static let KEY_REFRESH_TOKEN = "KEY_REFRESH_TOKEN"
    
    //KEY ROLE
    static let KEY_ROLE_USER = "KEY_ROLE_USER"
    static let KEY_USER_ID = "KEY_USER_ID"
    
    //ROLE VALUE
    static let ROLE_USER_WEBMASTER = "webmaster"
    static let ROLE_USER_ADMIN = "administrator"
    static let ROLE_USER_EDITOR = "editor"
    static let ROLE_USER_SALE = "sale"
    static let ROLE_USER_STORE = "store"
    
    //Time Stamp for CHeck TOken
    static let KEY_TIME_STAMP_TOKEN = "KEY_TIME_STAMP_TOKEN"
    
    //Domain
    static let KEY_DOMAIN = "KEY_DOMAIN"
    
    static let sharedInstance = DataHelper()
    
    //Default Empty
    static var imgBlank = "default-img"
    
    //StoryBoard
    let Login_StoryB = UIStoryboard(name: "Login", bundle: nil)
    let Main_StoryB = UIStoryboard(name: "Main", bundle: nil)
    let Main_Sale_StoryB = UIStoryboard(name: "Main_Sale", bundle: nil)
    let WareHouse_StoryB = UIStoryboard(name: "WareHouse", bundle: nil)
    let Order_StoryB = UIStoryboard(name: "Order", bundle: nil)
    let Global_StoryB = UIStoryboard(name: "Global", bundle: nil)
    let Payment_StoryB = UIStoryboard(name: "Payment", bundle: nil)
    let More_StoryB = UIStoryboard(name: "More", bundle: nil)
    let Dashboard_StoryB = UIStoryboard(name: "Dashboard", bundle: nil)
    
    //Date Select Report
    var dateFromText = ""
    var dateToText = ""
    
    //    var ARRAY_NUM_CATEGORY_DEFAULT = [NumCategoryModel]()
    //
    //    var ARRAY_CATEGORY_DEFAULT = [CategoryModel]()
    //    var ARRAY_CATEGORY_MAIN = [CategoryModel]()
    //    var ARRAY_CATEGORY_MONEY_DEPOSIT_DEFAULT = [CategoryModel]()
    //
    //    //Filter Default
    //    var arrayFilterDefaultForSearchCondo = [FilterModel]()
    //
    //    //Category Selected
    //    var categorySelected:CategoryModel = CategoryModel.init()
    //
    //    //Main Data
    //    var ARRAY_PRODUCT_MAIN = [ProductModel]()
    //
    //    //Data Stock
    //    var stockModel:StockModel? = nil
    //    var goldModel:GoldModel? = nil
    //    var oilModel:OilModel? = nil
    //    var exchangeRateModel:ExchangeModel? = nil
    //
    //    //Data
    //    var productDataDefault = ProductAndSeriesModel()
    
    //TopView
    //var exchangeRateModel:Main? = nil
    
    init()
    {
        //Init
    }
    
    //SAVE ROLE
    static func ROLE_USER_(role_user:String) {
        UserDefaults.standard.set(role_user, forKey: KEY_ROLE_USER)
        UserDefaults.standard.synchronize()
    }
    //GET
    static func ROLE_USER()->String {
        return UserDefaults.standard.string(forKey: KEY_ROLE_USER) ?? ""
    }
    
    //SAVE USER ID
    static func USER_ID_(user_id:String) {
        UserDefaults.standard.set(user_id, forKey: KEY_USER_ID)
        UserDefaults.standard.synchronize()
    }
    //USER
    static func USER_ID()->String {
        return UserDefaults.standard.string(forKey: KEY_USER_ID) ?? ""
    }
    
    
    //SAVE
    static func STATUS_LOGIN_(status:Bool) {
        UserDefaults.standard.set(status, forKey: KEY_STATUS_LOGIN)
        UserDefaults.standard.synchronize()
    }
    //GET
    static func STATUS_LOGIN()->Bool {
        return UserDefaults.standard.bool(forKey: KEY_STATUS_LOGIN)
    }
    
    //SAVE
    static func STATUS_FIRST_TIME_(status:Bool) {
        UserDefaults.standard.set(status, forKey: KEY_FIRST_TIME)
        UserDefaults.standard.synchronize()
    }
    
    //GET
    static func STATUS_FIRST_TIME()->Bool {
        return !UserDefaults.standard.bool(forKey: KEY_FIRST_TIME)
    }
    
    //SAVE
    static func ACESS_TOKEN_(acess_token:String) {
        UserDefaults.standard.set(acess_token, forKey: KEY_ACCESS_TOKEN)
        UserDefaults.standard.synchronize()
    }
    
    //GET
    static func ACESS_TOKEN()->String {
        //return GET_STRING_FOR_KEY(key: KEY_ACCESS_TOKEN)
        return "Bearer \(GET_STRING_FOR_KEY(key: KEY_ACCESS_TOKEN))"
    }
    
    //SAVE
    static func REFRESH_TOKEN_(refresh_token:String) {
        UserDefaults.standard.set(refresh_token, forKey: KEY_REFRESH_TOKEN)
        UserDefaults.standard.synchronize()
    }
    
    //GET
    static func REFRESH_TOKEN()->String {
        return GET_STRING_FOR_KEY(key: KEY_REFRESH_TOKEN)
    }
    
    //SAVE
    static func TIME_STAMP_TOKEN_SAVE() {
        let timestampCurrent = NSDate().timeIntervalSince1970
        UserDefaults.standard.set(timestampCurrent, forKey: KEY_TIME_STAMP_TOKEN)
        UserDefaults.standard.synchronize()
    }
    
    //GET
    static func TIME_STAMP_TOKEN()->Int {
        return UserDefaults.standard.integer(forKey: KEY_TIME_STAMP_TOKEN)
    }
    
    static func GET_CURRENT_TIME_STAMP()->String
    {
        let timestamp = NSDate().timeIntervalSince1970
        return "\(timestamp)"
    }
    
//    static func getSummary(arrayProduct:[ProductRp])->Int
//    {
//        //Process Summary
//        var summary = 0
//        for productSelect in arrayProduct
//        {
//            for _ in 1...productSelect.qty
//            {
//                summary = summary+(productSelect.price ?? 0)
//            }
//        }
//        return summary
//    }
    
    static func checkRefreshToken()->Bool
    {
        let myTimeIntervalBack = TimeInterval(self.TIME_STAMP_TOKEN())
        let timestampCurrent = NSDate().timeIntervalSince1970
        let answer = timestampCurrent - myTimeIntervalBack
        //let timeAnswer = NSDate(timeIntervalSince1970: TimeInterval(answer))
        let second = Int(answer)
        if second>3500
        {
            return false
        }
        else
        {
            return true
        }
    }
//
//    static func CheckAndRefreshToken()
//    {
//        if !DataHelper.checkRefreshToken()
//        {
//            ServiceHelper.sharedInstance.refreshToken { (loginAccess, error) in
//                //Complete
//            }
//        }
//    }
//
    static func checkDateCorrect2000(dateCheck:String)->String {
        
        var dateCheckArray = dateCheck.components(separatedBy: "-")
        if dateCheckArray.count > 2
        {
            let year = Int(dateCheckArray[0]) ?? 0
            if year > 2500
            {
                let year2000 = year-543
                let dateCorrect = "\(year2000)-\(dateCheckArray[1])-\(dateCheckArray[2])"
                return dateCorrect
            }
            else
            {
                return dateCheck
            }
        }
        return dateCheck
    }
    
    static func GET_CURRENT_HOUR()->Int {
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        return hour
    }
    
    //SAVE
    static func DOMAIN_(domain:String) {
        UserDefaults.standard.set(domain, forKey: KEY_DOMAIN)
        UserDefaults.standard.synchronize()
    }
    
    //GET
    static func DOMAIN()->String {
        return GET_STRING_FOR_KEY(key: KEY_DOMAIN)
    }
    
    //Get
    static func GET_PATH_IMAGE(imagePath:String) -> String
    {
        return "https://\(DataHelper.DOMAIN())\(imagePath)"
    }
    
    //Get String
    static func GET_STRING_FOR_KEY(key:String) -> String {
        if let textString = UserDefaults.standard.value(forKey:key) as? String
        {
            return textString;
        }
        else
        {
            return "";
        }
    }
    
    //Genarate Qrcode
    static func GENARATE_QRCODE(key_genarate:String) -> UIImage {
        let data = key_genarate.data(using: .ascii, allowLossyConversion: false)
        let filter = CIFilter(name: "CIQRCodeGenerator")
        filter?.setValue(data, forKey: "inputMessage")
        let img = UIImage(ciImage: (filter?.outputImage)!)
        return img
    }
    
//    static func getStatusNameWithStatusID(statusID:Int) -> String {
//        if statusID == 1
//        {
//            return StringHelper.getStringByKey(STRING_KEY:"status_1")
//        }
//        else if statusID == 2
//        {
//            return StringHelper.getStringByKey(STRING_KEY:"status_2")
//        }
//        else if statusID == 3
//        {
//            return StringHelper.getStringByKey(STRING_KEY:"status_3")
//        }
//        else if statusID == 4
//        {
//            return StringHelper.getStringByKey(STRING_KEY:"status_4")
//        }
//        else
//        {
//            return StringHelper.getStringByKey(STRING_KEY:"status_5")
//        }
//    }
//
    static func isValidEmail(email:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: email)
    }
    
    static func isValidPassword(password:String) -> Bool {
        
        let passwordRegEx = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$"
        let passwordTest = NSPredicate(format:"SELF MATCHES %@", passwordRegEx)
        let statusHaveCharacter = passwordTest.evaluate(with: password)
        if statusHaveCharacter
        {
            if password.count >= 8
            {
                return true
            }
            else
            {
                return false
            }
        }
        else
        {
            return false
        }
    }
    
    static func DATE_TODAY() -> String
    {
        //init
        let startDate = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        let dateEndString = formatter.string(from: startDate)
        return dateEndString
    }
    
    static func DATE_BEFORE_1_MONTH() -> String
    {
        //init
        let startDate = Date()
        var dateComponents = DateComponents()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        
        dateComponents.month = -1
        let endDate = Calendar.current.date(byAdding: dateComponents, to: startDate)
        let dateStartString = formatter.string(from: endDate!)
        return dateStartString
    }
    
    static func getMonthFromDate(date:Date) -> String
    {
        return date.month
    }
    
    static func getDayFromDate(date:Date) -> String
    {
        return date.day
    }
    
    static func getYearFromDate(date:Date) -> String
    {
        return date.year
    }
    
    static func getNumberOfDate(date:Date) -> Double
    {
        let arrayDayInMonth = [31,28,31,30,31,30,31,31,30,31,30,31]
        var day = 0
        
        let dateOfMonth:Int = Int.init("\(date.day)") ?? 1
        let month:Int = Int.init("\(date.month)") ?? 1
        
        print("day : \(date.day)")
        print("date.month : \(date.month)")
        
        for index in 0..<month-1
        {
            day += arrayDayInMonth[index]
        }
        day += dateOfMonth
        return Double.init(day)
    }
    
    func decode(jwtToken jwt: String) -> [String: Any] {
        let segments = jwt.components(separatedBy: ".")
        return decodeJWTPart(segments[1]) ?? [:]
    }
    
    func base64UrlDecode(_ value: String) -> Data? {
        var base64 = value
            .replacingOccurrences(of: "-", with: "+")
            .replacingOccurrences(of: "_", with: "/")
        
        let length = Double(base64.lengthOfBytes(using: String.Encoding.utf8))
        let requiredLength = 4 * ceil(length / 4.0)
        let paddingLength = requiredLength - length
        if paddingLength > 0 {
            let padding = "".padding(toLength: Int(paddingLength), withPad: "=", startingAt: 0)
            base64 = base64 + padding
        }
        return Data(base64Encoded: base64, options: .ignoreUnknownCharacters)
    }
    
    func decodeJWTPart(_ value: String) -> [String: Any]? {
        guard let bodyData = base64UrlDecode(value),
            let json = try? JSONSerialization.jsonObject(with: bodyData, options: []), let payload = json as? [String: Any] else {
                return nil
        }
        
        return payload
    }
    
    //    func convertCategoryMainToProduct(){
    //        for category in ARRAY_CATEGORY_MAIN
    //        {
    //            for index in 0...category.arrayProducts.count-1 {
    //                //print("\(index) times 5 is \(index * 5)")
    //                if index == 0
    //                {
    //                    //Big Thumb
    //                    let productIndex = category.arrayProducts[index]
    //                    productIndex.TYPE_ROW = ProductTypeRow.BIG_THUMB_TYPE
    //                    self.ARRAY_PRODUCT_MAIN.append(productIndex)
    //                }
    //                else
    //                {
    //                    //Row Type
    //                    let productIndex = category.arrayProducts[index]
    //                    productIndex.TYPE_ROW = ProductTypeRow.ROW_TYPE
    //                    self.ARRAY_PRODUCT_MAIN.append(productIndex)
    //                }
    //            }
    //        }
    //    }
    //
    //    func getExchangeWithName(name:String) -> ExchangeRateModel {
    //        if (self.exchangeRateModel != nil)
    //        {
    //            if ((exchangeRateModel?.scbBankExchange) != nil)
    //            {
    //                if (exchangeRateModel?.scbBankExchange.arrayExchangeRate.count)! > 0
    //                {
    //                    if let foundExchange = exchangeRateModel?.scbBankExchange.arrayExchangeRate.first(where: {$0.name == name}) {
    //                        // do something with foo
    //                        return foundExchange
    //                    }
    //                }
    //            }
    //        }
    //        return ExchangeRateModel()
    //    }
    //
    //     func getBrandFromName(brand_name:String) -> ProductOptionModel {
    //        for brand in self.productDataDefault.arrayBrands
    //        {
    //            print("Check : \(brand.index.uppercased()) == \(brand_name.uppercased())")
    //            if brand.index.uppercased() == brand_name.uppercased()
    //            {
    //                print("Same : \(brand.index.uppercased()) == \(brand_name.uppercased())")
    //                return brand
    //            }
    //        }
    //        return ProductOptionModel()
    //    }
}

extension Date {
    var day: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd"
        return dateFormatter.string(from: self)
    }
    
    var month: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM"
        return dateFormatter.string(from: self)
    }
    
    var year: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy"
        return dateFormatter.string(from: self)
    }
}

