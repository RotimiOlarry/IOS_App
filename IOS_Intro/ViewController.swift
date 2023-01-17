//
//  ViewController.swift
//  IOS_Intro
//
//  Created by Tomiwa Olarewaju on 1/11/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var FirstNameTextField: UITextField!
    @IBOutlet weak var LastNameTextField: UITextField!
    @IBOutlet weak var SchoolNameTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numOfPetLabel: UILabel!
    @IBOutlet weak var morePetStepper: UIStepper!
    @IBOutlet weak var morePetSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    @IBAction func myStepperChangeValue(_ sender: UIStepper) {
        numOfPetLabel.text = String(Int(sender.value))
    }
    
    @IBAction func IntroduceSelfDidTap(_ sender: UIButton) {
        
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        let introduction = "Let me re-introduce myself, my name is \(FirstNameTextField.text!) \(LastNameTextField.text!) and i attend \(SchoolNameTextField.text!). I am currently in my \(year!) year and i own \(numOfPetLabel.text!) pets. It is \(morePetSwitch.isOn) that i want more pets."
        
        let alertController = UIAlertController(title:"My Introduction", message: introduction, preferredStyle:.alert)
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler:nil)
        
        alertController.addAction(action)
        
        present(alertController, animated:true, completion: nil)
    }
}

