//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Gery Josua Sumual on 16/05/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController:
    UIViewController {
    var bmiValue: String?
    var bmiColor: UIColor?
    var bmiAdvice: String?
    @IBOutlet weak var BMILabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var backgroundImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        BMILabel.text = bmiValue
        adviceLabel.text = bmiAdvice
        backgroundImage.backgroundColor = bmiColor
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
 
    }
    */

}
