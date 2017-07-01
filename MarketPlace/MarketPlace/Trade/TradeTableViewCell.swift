//
//  TradeTableViewCell.swift
//  MarketPlace
//
//  Created by Cris Uy on 01/07/2017.
//  Copyright © 2017 Angelhack. All rights reserved.
//

import UIKit
import GoogleMaps

enum TradeTableViewCellStyleRow: Int {
    case Row0 = 0
}

let height0:CGFloat = 0

class TradeTableViewCell: UITableViewCell {

    // 0
    @IBOutlet weak var searchButton0: UIButton?
    @IBOutlet weak var buyerButton0: UIButton?
    @IBOutlet weak var sellerButton0: UIButton?
    
    // 1
    @IBOutlet weak var mapButton1: UIButton?
    @IBOutlet weak var listButton1: UIButton?
    
    // 2
    @IBOutlet weak var mapView2: GMSMapView?
    
    // 3
    @IBOutlet weak var scrollView3: UIScrollView?
    @IBOutlet weak var pageControl3: UIPageControl?
    var totalPages3: Int
    
    class func cellFromNib(_ index: Int) -> TradeTableViewCell {
        var array = Bundle.main.loadNibNamed(NSStringFromClass(self), owner: nil, options: nil)
        
        let cell = array?[index] as! TradeTableViewCell
        cell.backgroundColor = UIColor.clear
        
        return cell
    }
    
    class func cellHeightWithStyle(_ style:TradeTableViewCellStyleRow) -> CGFloat {
        return height0
    }
}
