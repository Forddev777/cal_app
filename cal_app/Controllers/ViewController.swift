//
//  ViewController.swift
//  cal_app
//
//  Created by suriya taothongkom on 1/4/2565 BE.
//

import UIKit

class ViewController: UIViewController {

    var bmiValue = "0"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var HeightLabel: UILabel!
    @IBOutlet weak var WeightLabel: UILabel!
    
    @IBOutlet weak var heightslider: UISlider!
    @IBOutlet weak var weightslider: UISlider!
    
    
    @IBAction func HeightChanged(_ sender: UISlider) {
        let heightdata = String(format: "%.2f", sender.value)
        HeightLabel.text = "\(heightdata)m"
    }
    @IBAction func WeightChanged(_ sender: UISlider) {
        let weightdata  = String(format: "%.0f", sender.value)
        WeightLabel.text = "\(weightdata)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let heightdata = heightslider.value
        let weightdata = weightslider.value
        let bmi = weightdata / (heightdata * heightdata)
        bmiValue = String(format: "%.1f", bmi)
        
        print(bmiValue + " calculatePressed")
        performSegue(withIdentifier: "gotoResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoResult" {
     
            let dataVC = segue.destination as! TwoViewController
                dataVC.bmiValue = bmiValue
         
        }
    }
}
