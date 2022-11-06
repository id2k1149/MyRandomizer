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
    
    var randomNumber: RandomNumber!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minValueTF.text = randomNumber.minimumValue.formatted()
        maxValueTF.text = randomNumber.maximumValue.formatted()
    }
    
    @IBAction func cancelButtonTapped() {
        dismiss(animated: true)
    }
}
