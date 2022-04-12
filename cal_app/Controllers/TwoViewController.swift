//
//  TwoViewController.swift
//  cal_app
//
//  Created by suriya taothongkom on 10/4/2565 BE.
//

import UIKit

class TwoViewController: UIViewController {
            var bmiValue = ""
            var advice = ""
    var color  = UIColor()
          
            @IBOutlet weak var bmiLable: UILabel!
            @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
                bmiLable.text = bmiValue
                adviceLabel.text = advice
                view.backgroundColor = color
    }

    @IBAction func BackBtn(_ sender: UIButton) {
         dismiss(animated: true, completion: nil)
    }
    
}
