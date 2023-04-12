//
//  ViewController.swift
//  HealthApp
//
//  Created by Harshit Punn on 2023-03-01.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var weightText: UITextField!
    
    @IBOutlet weak var heightText: UITextField!
    
    @IBOutlet weak var resultText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func CalculateBMI(_ sender: Any) {
        let weightValue = Double(weightText.text!)
        
        let heightValue = Double(heightText.text!)
        
        let bMI = Double(round(10 * (weightValue!/(heightValue! * heightValue!)))/10);
        
        if(bMI < 18.5) {
            resultText.text = String("BM: \(bMI), UnderWeight ")
        } else if(bMI < 24.9) {
            resultText.text = String("BM: \(bMI), Healthy Weight ")
        } else if (bMI < 29.9) {
            resultText.text = String("BM: \(bMI), Over Weight")
        } else {
            resultText.text = String("BM: \(bMI), Obese")
        }
    }
    

}

