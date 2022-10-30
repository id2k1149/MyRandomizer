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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func cancelButtonTapped() {
        dismiss(animated: true)
    }
}
