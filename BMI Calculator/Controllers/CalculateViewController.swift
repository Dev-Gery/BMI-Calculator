//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBAction func heightSliderAction(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
    }
    @IBOutlet weak var heightSliderOutlet: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    @IBAction func weightSliderAction(_ sender: UISlider) {
        weightLabel.text = "\(String(format: "%.0f", sender.value))Kg"
    }
    @IBOutlet weak var weightSliderOutlet: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heightLabel.text = String(format: "%.2f", heightSliderOutlet.value) + "m"
        weightLabel.text = String(format: "%.0f", weightSliderOutlet.value) + "Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let h = Float(heightSliderOutlet.value)
        let w = Float(weightSliderOutlet.value)
        calculatorBrain.calculateBMI(height: h, weight: w)
        self.performSegue(withIdentifier: "gotoResult", sender: self)
        //        let secondVC = ResultViewController()
        //        secondVC.bmiValue = String(format: "%.2f", BMI)
        //        self.present(secondVC, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = String(format: "%.2f", calculatorBrain.getValue() ?? "Error")
            destinationVC.bmiAdvice = calculatorBrain.getAdvice() ?? "Try again or contact the app developer to debug"
            destinationVC.bmiColor = calculatorBrain.getColor()
            //            destinationVC.BMILabel?.text = bmiValue
        }
    }
    
    
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    
}
