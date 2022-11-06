//
//  ViewController.swift
//  MyRandomizer
//
//  Created by Max Franz Immelmann on 10/29/22.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setNewValues(for minimumValue: String, and maximumValue: String)
}

class MainViewController: UIViewController {

    @IBOutlet var minValueLabel: UILabel!
    @IBOutlet var maxValueLabel: UILabel!
    @IBOutlet var randomNumberLabel: UILabel!
    @IBOutlet var getResultButton: UIButton!
    
    private var randomNumber = RandomNumber(minimumValue: 0, maximumValue: 100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getResultButton.layer.cornerRadius = 10
        minValueLabel.text = randomNumber.minimumValue.formatted()
        maxValueLabel.text = randomNumber.maximumValue.formatted()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let settingsVC = navigationVC.topViewController as? SettingsViewController else { return }
        
        // initialize settingsVC.randomNumber
        settingsVC.randomNumber = randomNumber
        
        // before going to SettingsViewController
        // need to initialize settingsVC.delegate
        settingsVC.delegate = self
        
    }

    @IBAction func getResultButtonTapped() {
        randomNumberLabel.text = randomNumber.getRandom.formatted()
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let settingsVC = segue.source as? SettingsViewController else { return }
        minValueLabel.text = settingsVC.minValueTF.text
        maxValueLabel.text = settingsVC.maxValueTF.text
    }
}

// MARK: - SettingsViewControllerDelegate
extension MainViewController: SettingsViewControllerDelegate {
    func setNewValues(for minimumValue: String, and maximumValue: String) {
        minValueLabel.text = minimumValue
        maxValueLabel.text = maximumValue
    }
}

