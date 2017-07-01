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
    case Row1 = 1
    case Row2 = 2
    case Row3 = 3
}

internal let height0:CGFloat = 60
internal let height1:CGFloat = 40
internal let height2:CGFloat = 300
internal let height3:CGFloat = 100

class TradeTableViewCell: UITableViewCell {

    // 0
    @IBOutlet weak var searchLabel0: UILabel?
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
    var totalPages3: Int = 0
    
    class func cellFromNib(_ index: Int) -> TradeTableViewCell {
        var array = Bundle.main.loadNibNamed("TradeTableViewCell", owner: nil, options: nil)
        
        let cell = array?[index] as! TradeTableViewCell
        cell.backgroundColor = UIColor.clear
        
        return cell
    }
    
    class func cellHeightWithStyle(_ style:TradeTableViewCellStyleRow) -> CGFloat {
        
        switch style {
            case .Row0:
                return height0
            case .Row1:
                return height1
            case .Row2:
                return height2
            case .Row3:
                return height3
        }
        
    }
}
