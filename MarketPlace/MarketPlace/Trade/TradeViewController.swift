//
//  TradeViewController.swift
//  MarketPlace
//
//  Created by Cris Uy on 01/07/2017.
//  Copyright © 2017 Angelhack. All rights reserved.
//

import UIKit

class TradeViewController: UIViewController {

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
        return 0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let styleRow: TradeTableViewCellStyleRow = TradeTableViewCellStyleRow(rawValue: indexPath.row)!
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "\(styleRow)")
        
        if cell == nil {
            cell = TradeTableViewCell.cellFromNib(styleRow.rawValue)
        }
        
        return cell!
    }
}

extension TradeViewController: UITableViewDataSource {
    
}
