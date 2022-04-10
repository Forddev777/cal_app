//
//  SecondViewControllers.swift
//  cal_app
//
//  Created by suriya taothongkom on 8/4/2565 BE.
//
import UIKit
 
class SecondViewController: UIViewController {
    
    var bmiValue =  String?
   
    @IBOutlet weak var bmiLable: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      bmiLable.text = bmiValue
       
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
    }
}
