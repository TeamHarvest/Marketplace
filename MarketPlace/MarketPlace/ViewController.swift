//
//  ViewController.swift
//  MarketPlace
//
//  Created by Bryner Decena on 01/07/2017.
//  Copyright © 2017 Angelhack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var btn_fbLogin: UIButton!
    @IBOutlet var btn_login: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        btn_login.layer.cornerRadius = 15.0
        
        btn_fbLogin.layer.cornerRadius = 15.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }

}

