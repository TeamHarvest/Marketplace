//
//  HomeViewController.swift
//  MarketPlace
//
//  Created by Bryner Decena on 01/07/2017.
//  Copyright © 2017 Angelhack. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet var view_start: UIView!
    @IBOutlet var lbl_totalSpent: UILabel!
    @IBOutlet var lbl_totalOrder: UILabel!
    @IBOutlet var btn_orderList: UIButton!
    @IBOutlet var colView_order: UICollectionView!

    let reuseIdentifier = "Cell"
//    var items = ["1", "2", "3", "4", "5", "6"]

    var imageName = [String]()
    var noOfKg = [String]()
    var modeOfPayment = [String]()
    var howOften = [String]()
    var buyDate = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btn_orderList.layer.borderWidth = 1.0
        btn_orderList.layer.borderColor = UIColor.gray.cgColor
        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        if(UserDefaults.standard.bool(forKey: KEY_ORDERED) == true){
            view_start.isHidden = true
            imageName = UserDefaults.standard.stringArray(forKey: KEY_IMAGE_NAME)!
            noOfKg = UserDefaults.standard.stringArray(forKey: KEY_NO_OF_KG)!
            modeOfPayment = UserDefaults.standard.stringArray(forKey: KEY_MODE_OF_PAYMENT)!
            howOften = UserDefaults.standard.stringArray(forKey: KEY_HOW_OFTEN)!
            buyDate = UserDefaults.standard.stringArray(forKey: KEY_BUY_DATE)!
            
            
            
            colView_order.reloadData()
            print("viewWillAppear")
        }

    }

    
    // tell the collection view how many cells to make
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("imageCount: \(self.imageName.count)")
        return self.imageName.count
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! HomeCollectionViewCell
        cell.img_product.image = UIImage(named: imageName[indexPath.row])
        cell.lbl_kg.text = noOfKg[indexPath.row]
        cell.lbl_modeOfPay.text = modeOfPayment[indexPath.row]
        cell.lbl_often.text = howOften[indexPath.row]
        cell.lbl_date.text = buyDate[indexPath.row]

        cell.backgroundColor = UIColor.gray // make cell more visible
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
    }

}
