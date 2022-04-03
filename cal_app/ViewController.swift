//
//  ViewController.swift
//  cal_app
//
//  Created by suriya taothongkom on 1/4/2565 BE.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var HeightLabel: UILabel!
    @IBOutlet weak var WeightLabel: UILabel!
    
    
    @IBAction func HeightChanged(_ sender: UISlider) {
        let heightdata = String(format: "%.2f", sender.value)
        HeightLabel.text = heightdata
    }
    
    @IBAction func WeightChanged(_ sender: UISlider) {
        WeightLabel.text = String(sender.value)
    
    }
    
    
}

