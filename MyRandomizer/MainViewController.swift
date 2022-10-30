//
//  ViewController.swift
//  MyRandomizer
//
//  Created by Max Franz Immelmann on 10/29/22.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var minValueLabel: UILabel!
    @IBOutlet var maxValueLabel: UILabel!
    @IBOutlet var randomNumberLabel: UILabel!
    
    @IBOutlet var getResultButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getResultButton.layer.cornerRadius = 10
    }

    @IBAction func getResultButtonTapped() {
        let minimumNumber = Int(minValueLabel.text ?? "") ?? 0
        let maximumNumber = Int(maxValueLabel.text ?? "") ?? 100
        
        randomNumberLabel.text = Int.random(in: minimumNumber...maximumNumber).formatted()
    }
    
}

