//
//  SettingsViewController.swift
//  MyRandomizer
//
//  Created by Max Franz Immelmann on 10/29/22.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var minValueTF: UITextField!
    @IBOutlet var maxValueTF: UITextField!
    
    var minValue: String!
    var maxValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minValueTF.text = minValue
        maxValueTF.text = maxValue
    }
    
    @IBAction func cancelButtonTapped() {
        dismiss(animated: true)
    }
}
