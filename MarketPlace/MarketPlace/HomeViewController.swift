//
//  HomeViewController.swift
//  MarketPlace
//
//  Created by Bryner Decena on 01/07/2017.
//  Copyright © 2017 Angelhack. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var lbl_totalSpent: UILabel!
    @IBOutlet var lbl_totalOrder: UILabel!
    @IBOutlet var btn_orderList: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btn_orderList.layer.borderWidth = 1.0
        btn_orderList.layer.borderColor = UIColor.black.cgColor
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
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
