//
//  TradeViewController.swift
//  MarketPlace
//
//  Created by Cris Uy on 01/07/2017.
//  Copyright © 2017 Angelhack. All rights reserved.
//

import UIKit
import GoogleMaps

class TradeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension TradeViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return TradeTableViewCell.cellHeightWithStyle(TradeTableViewCellStyleRow(rawValue: indexPath.row)!)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let styleRow: TradeTableViewCellStyleRow = TradeTableViewCellStyleRow(rawValue: indexPath.row)!
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "\(styleRow)") as? TradeTableViewCell
        
        if cell == nil {
            cell = TradeTableViewCell.cellFromNib(styleRow.rawValue)
            
            cell?.buyerButton0?.layer.cornerRadius = 5.0
            cell?.buyerButton0?.layer.borderWidth = 1.0
            cell?.buyerButton0?.layer.borderColor = UIColor.init(colorLiteralRed: 0.0/255.0, green: 122.0/255.0, blue: 255.0/255.0, alpha: 1.0).cgColor
            
            cell?.sellerButton0?.layer.cornerRadius = 5.0
            cell?.sellerButton0?.layer.borderWidth = 1.0
            cell?.sellerButton0?.layer.borderColor = UIColor.init(colorLiteralRed: 0.0/255.0, green: 122.0/255.0, blue: 255.0/255.0, alpha: 1.0).cgColor
            
            cell?.mapView2?.accessibilityElementsHidden = true
            cell?.mapView2?.isMyLocationEnabled = true
            cell?.mapView2?.animate(toZoom: 18.0)
            cell?.mapView2?.delegate = self
        }
        
        var coordinate: CLLocationCoordinate2D = CLLocationCoordinate2D()
        coordinate.latitude = 140.0000123
        coordinate.longitude = 24.01234
        cell?.mapView2?.animate(toLocation: coordinate)
        
        return cell!
    }
}

extension TradeViewController: UITableViewDataSource {
    
}

extension TradeViewController: GMSMapViewDelegate {
    
}
