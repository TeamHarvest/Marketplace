//
//  Utils.swift
//  MarketPlace
//
//  Created by Bryner Decena on 01/07/2017.
//  Copyright © 2017 Angelhack. All rights reserved.
//

import UIKit

internal var KEY_ORDERED = "Ordered"

internal var KEY_IMAGE_NAME = "imageName"
internal var KEY_NO_OF_KG = "noOfKg"
internal var KEY_MODE_OF_PAYMENT = "modeOfPayment"
internal var KEY_HOW_OFTEN = "howOften"
internal var KEY_BUY_DATE = "buyDate"

internal var COLOR_ACCENT_BLUE = "#28d4ce"

open class Utils {

    // Creates a UIColor from a Hex string.
    class func colorWithHexString (_ hex:String) -> UIColor {
        var cString = hex.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString = (cString as NSString).substring(from: 1)
        }
        
        if (cString.characters.count != 6) {
            return UIColor.gray
        }
        
        let rString = (cString as NSString).substring(to: 2)
        let gString = ((cString as NSString).substring(from: 2) as NSString).substring(to: 2)
        let bString = ((cString as NSString).substring(from: 4) as NSString).substring(to: 2)
        
        var r:CUnsignedInt = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0;
        Scanner(string: rString).scanHexInt32(&r)
        Scanner(string: gString).scanHexInt32(&g)
        Scanner(string: bString).scanHexInt32(&b)
        
        
        return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: CGFloat(1))
    }
}
