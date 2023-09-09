//
//  ViewController.swift
//  PlayWithAlphaNumericsApp
//
//  Created by Charan on 9/8/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var headerLBL: UILabel!
    @IBOutlet weak var firstStrTF: UITextField!
    @IBOutlet weak var secondStrTF: UITextField!
    @IBOutlet weak var messageTV: UITextView!

    
    @IBOutlet weak var firstNumLBL: UILabel!
    @IBOutlet weak var secondNumLBL: UILabel!
    
    
    @IBOutlet weak var numberSWCH: UISwitch!
    @IBOutlet weak var stringSWCH: UISwitch!
    
    
    @IBOutlet weak var firstNumStepper: UIStepper!
    @IBOutlet weak var secondNumStepper: UIStepper!
    
    
    @IBOutlet weak var generatePatternBTN: UIButton!
    @IBOutlet weak var manipulateStringsBTN: UIButton!
    @IBOutlet weak var resetBTN: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.headerLBL.text = String(format:"%@\nPlay with AlphaNumerics™️","\u{0c38}\u{0c4d}\u{0c35}\u{0c3e}\u{0c17}\u{0c24}\u{0c02}")
        
        self.firstNumStepper.isEnabled = false
        self.secondNumStepper.isEnabled = false
        self.firstStrTF.isEnabled = false
        self.secondStrTF.isEnabled = false
        self.generatePatternBTN.isEnabled = false
        self.manipulateStringsBTN.isEnabled = false
        self.messageTV.text=""
    }

    @IBAction func numberSwitchChange(_ sender: UISwitch)
    {
        self.firstNumStepper.isEnabled = sender.isOn
        self.secondNumStepper.isEnabled = sender.isOn
        self.generatePatternBTN.isEnabled = sender.isOn
    }
    
    @IBAction func stringSwitchChange(_ sender: UISwitch)
    {
        self.firstStrTF.isEnabled = sender.isOn
        self.secondStrTF.isEnabled = sender.isOn
        self.manipulateStringsBTN.isEnabled = sender.isOn
    }
    
   
    @IBAction func generatePattern(_ sender: UIButton) {
    
        
    }
    
}

