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
    var delegate: SettingsViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minValueTF.text = randomNumber.minimumValue.formatted()
        maxValueTF.text = randomNumber.maximumValue.formatted()
    }
    
    @IBAction func cancelButtonTapped() {
        dismiss(animated: true)
    }
    
    @IBAction func saveButtonPressed() {
        delegate.setNewValues(
            for: minValueTF.text ?? "0",
            and: maxValueTF.text ?? "100")
        dismiss(animated: true)
    }
}
