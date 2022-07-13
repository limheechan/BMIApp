//
//  ViewController.swift
//  BMIApp
//
//  Created by 임희찬 on 2022/07/12.
//

import UIKit

class CalculateViewController: UIViewController {

    var bmiValue : String = ""
    
    @IBOutlet weak var heightPointLabel: UILabel!
    @IBOutlet weak var weightPointLabel: UILabel!
    
    
    @IBOutlet weak var heightValue: UISlider!
    
    
    @IBOutlet weak var weightValue: UISlider!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let demical = sender.value
        heightPointLabel.text = "\(String(format: "%.2f", demical))m."
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let demical = sender.value
        weightPointLabel.text  = "\(String(format: "%.2f", demical))Kg."
    }
    
    
    @IBAction func calculatedPrassed(_ sender: UIButton) {
         
        let height = heightValue.value
        let weight = weightValue.value
        
        let bmi =   weight / pow(height, 2)
        bmiValue = String(format: "%.1f", bmi)
      //goToResult
        self.performSegue(withIdentifier: "goToResult", sender: self)
      
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier ==  "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmiValue
        }
    }
    
    
    
}

