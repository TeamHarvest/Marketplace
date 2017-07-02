//
//  OrderTableViewController.swift
//  MarketPlace
//
//  Created by Bryner Decena on 01/07/2017.
//  Copyright © 2017 Angelhack. All rights reserved.
//

import UIKit

class OrderTableViewController: UITableViewController {

    @IBOutlet var btn_banana: UIButton!
    @IBOutlet var btn_mango: UIButton!
    @IBOutlet var btn_orange: UIButton!
    @IBOutlet var btn_apple: UIButton!
    
    @IBOutlet var input_country: UITextField!
    @IBOutlet var input_city: UITextField!
    @IBOutlet var btn_pinMap: UIButton!
    @IBOutlet var input_addr: UITextField!
    @IBOutlet var input_quantity: UITextField!
    
    @IBOutlet var btn_once: UIButton!
    @IBOutlet var btn_daily: UIButton!
    @IBOutlet var btn_weekly: UIButton!
    @IBOutlet var btn_monthly: UIButton!
    
    @IBOutlet var input_date: UITextField!
    @IBOutlet var input_modeOfPay: UITextField!
    
    @IBOutlet var btn_order: UIButton!
    
    var imageName = [String]()
    var noOfKg = [String]()
    var modeOfPayment = [String]()
    var howOften = [String]()
    var buyDate = [String]()
    
    var tempProduct = String()
    var tempHowOften = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        //Product
        btn_apple.layer.borderWidth = 1.0
        btn_apple.layer.borderColor = UIColor.gray.cgColor
        btn_orange.layer.borderWidth = 1.0
        btn_orange.layer.borderColor = UIColor.gray.cgColor
        btn_mango.layer.borderWidth = 1.0
        btn_mango.layer.borderColor = UIColor.gray.cgColor
        btn_banana.layer.borderWidth = 1.0
        btn_banana.layer.borderColor = UIColor.gray.cgColor
        
        btn_pinMap.layer.borderWidth = 1.0
        btn_pinMap.layer.borderColor = UIColor.green.cgColor
        
        //How Often
        btn_once.layer.borderWidth = 1.0
        btn_once.layer.borderColor = UIColor.gray.cgColor
        btn_daily.layer.borderWidth = 1.0
        btn_daily.layer.borderColor = UIColor.gray.cgColor
        btn_weekly.layer.borderWidth = 1.0
        btn_weekly.layer.borderColor = UIColor.gray.cgColor
        btn_monthly.layer.borderWidth = 1.0
        btn_monthly.layer.borderColor = UIColor.gray.cgColor
        
        btn_order.layer.borderWidth = 1.0
        btn_order.layer.borderColor = UIColor.green.cgColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    //Products
    @IBAction func apple(_ sender: Any) {
        print("apple")
        btn_apple.layer.borderColor = UIColor.green.cgColor
        btn_orange.layer.borderColor = UIColor.gray.cgColor
        btn_mango.layer.borderColor = UIColor.gray.cgColor
        btn_banana.layer.borderColor = UIColor.gray.cgColor
        tempProduct = "apple"
    }
    @IBAction func orange(_ sender: Any) {
        print("orange")
        btn_apple.layer.borderColor = UIColor.gray.cgColor
        btn_orange.layer.borderColor = UIColor.green.cgColor
        btn_mango.layer.borderColor = UIColor.gray.cgColor
        btn_banana.layer.borderColor = UIColor.gray.cgColor
        tempProduct = "orange"
    }
    @IBAction func mango(_ sender: Any) {
        print("mango")
        btn_apple.layer.borderColor = UIColor.gray.cgColor
        btn_orange.layer.borderColor = UIColor.gray.cgColor
        btn_mango.layer.borderColor = UIColor.green.cgColor
        btn_banana.layer.borderColor = UIColor.gray.cgColor
        tempProduct = "mango"
    }
    @IBAction func banana(_ sender: Any) {
        print("banana")
        btn_apple.layer.borderColor = UIColor.gray.cgColor
        btn_orange.layer.borderColor = UIColor.gray.cgColor
        btn_mango.layer.borderColor = UIColor.gray.cgColor
        btn_banana.layer.borderColor = UIColor.green.cgColor
        tempProduct = "banana"
    }
    
    //How Often
    @IBAction func once(_ sender: Any) {
        btn_once.layer.borderColor = UIColor.green.cgColor
        btn_daily.layer.borderColor = UIColor.gray.cgColor
        btn_weekly.layer.borderColor = UIColor.gray.cgColor
        btn_monthly.layer.borderColor = UIColor.gray.cgColor
        tempHowOften = "Once"
    }
    @IBAction func daily(_ sender: Any) {
        btn_once.layer.borderColor = UIColor.gray.cgColor
        btn_daily.layer.borderColor = UIColor.green.cgColor
        btn_weekly.layer.borderColor = UIColor.gray.cgColor
        btn_monthly.layer.borderColor = UIColor.gray.cgColor
        tempHowOften = "Daily"
    }
    @IBAction func weekly(_ sender: Any) {
        btn_once.layer.borderColor = UIColor.gray.cgColor
        btn_daily.layer.borderColor = UIColor.gray.cgColor
        btn_weekly.layer.borderColor = UIColor.green.cgColor
        btn_monthly.layer.borderColor = UIColor.gray.cgColor
        tempHowOften = "Weekly"
    }
    @IBAction func monthly(_ sender: Any) {
        btn_once.layer.borderColor = UIColor.gray.cgColor
        btn_daily.layer.borderColor = UIColor.gray.cgColor
        btn_weekly.layer.borderColor = UIColor.gray.cgColor
        btn_monthly.layer.borderColor = UIColor.green.cgColor
        tempHowOften = "Monthly"
    }

    //Order
    @IBAction func order(_ sender: Any) {
        
        imageName = UserDefaults.standard.stringArray(forKey: KEY_IMAGE_NAME) ?? ["plus"]
        noOfKg = UserDefaults.standard.stringArray(forKey: KEY_NO_OF_KG) ?? ["Add an Order"]
        modeOfPayment = UserDefaults.standard.stringArray(forKey: KEY_MODE_OF_PAYMENT) ?? [""]
        howOften = UserDefaults.standard.stringArray(forKey: KEY_HOW_OFTEN) ?? [""]
        buyDate = UserDefaults.standard.stringArray(forKey: KEY_BUY_DATE) ?? [""]
        
        imageName.append(tempProduct)
        noOfKg.append(input_quantity.text!)
        modeOfPayment.append(input_modeOfPay.text!)
        howOften.append(tempHowOften)
        buyDate.append(input_date.text!)
        
        UserDefaults.standard.set(imageName, forKey: KEY_IMAGE_NAME)
        UserDefaults.standard.set(noOfKg, forKey: KEY_NO_OF_KG)
        UserDefaults.standard.set(modeOfPayment, forKey: KEY_MODE_OF_PAYMENT)
        UserDefaults.standard.set(howOften, forKey: KEY_HOW_OFTEN)
        UserDefaults.standard.set(buyDate, forKey: KEY_BUY_DATE)
        
        UserDefaults.standard.set(true, forKey: KEY_ORDERED)
        
        navigationController?.popViewController(animated: true)
    }
    

}
