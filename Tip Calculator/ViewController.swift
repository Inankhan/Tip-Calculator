//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Inan Khan on 3/7/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var ten_percent: UITextView!
    @IBOutlet weak var fifteen_percent: UITextView!
    @IBOutlet weak var twenty_percent: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func CalculateTapped(_ sender: Any) {
        if let total = Double(userInput.text!) {
            ten_percent.text = String(format: "$ %.2f", total * 0.1)
            fifteen_percent.text = String(format: "$ %.2f", total * 0.15)
            twenty_percent.text = String(format: "$ %.2f", total * 0.2)

        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        userInput.resignFirstResponder()
    }
    
}

