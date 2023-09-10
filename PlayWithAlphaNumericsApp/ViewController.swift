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
        
        self.numberSWCH.isOn = false
        self.stringSWCH.isOn = false
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
        let isEnabled = sender.isOn
        self.firstNumStepper.isEnabled = isEnabled
        self.secondNumStepper.isEnabled = isEnabled
        self.generatePatternBTN.isEnabled = isEnabled
    }
    
    @IBAction func stringSwitchChange(_ sender: UISwitch)
    {
        let isEnabled = sender.isOn
        self.firstStrTF.isEnabled = isEnabled
        self.secondStrTF.isEnabled = isEnabled
        self.manipulateStringsBTN.isEnabled = isEnabled
    }
    
   
    @IBAction func firstNumStepper(_ sender: UIStepper) {
        firstNumLBL.text = String(format:"%.0f",sender.value)
    }
    
    
    @IBAction func secondNumStepper(_ sender: UIStepper) {
        secondNumLBL.text = String(format:"%.0f",sender.value)
    }
    
    @IBAction func generatePattern(_ sender: UIButton) {
        
    }
    
    
    @IBAction func manipulateStrings(_ sender: UIButton) {
        
        let firstString = firstStrTF.text
        let secondString = secondStrTF.text
        
        
        if  firstString == ""
        {
            messageTV.text = "First string value is invalid. Please provide at least one character."
        }
        else if secondString == ""
        {
            messageTV.text = "Second string value is invalid. Please provide at least one character."
        }
        else{
            let result = "\(firstString ?? "")\(secondString ?? "")"
            
            let vowels = "aeiouAEIOU"
            let CS = result.lowercased()
            
            var VowCount = 0
            var ConCount = 0
            
            for char in CS{
                if char.isLetter{
                    if vowels.contains(char){
                        VowCount += 1
                    }
                    else
                    {
                        ConCount += 1
                    }
                }
            }
            let VC = "\(VowCount)"
            let CC = "\(ConCount)"
            
            let O1 = "Concatenation of two strings results in " + "\""+"\(result)"+"\""
            let O2 = "\nNumber of Vowels in " + "\""+"\(result)"+"\""+" is "+"\(VC)"
            let O3 = "\nNumber of Consonants in " + "\""+"\(result)"+"\""+" is "+"\(CC)"
            messageTV.text = "\(O1)\(O2)\(O3)"
            

        }
        
        
        
        
    }
    
    
    @IBAction func onReset(_ sender: Any) {
        self.numberSWCH.isOn = false
        self.stringSWCH.isOn = false
        self.firstNumStepper.isEnabled = false
        self.secondNumStepper.isEnabled = false
        self.firstStrTF.isEnabled = false
        self.secondStrTF.isEnabled = false
        self.generatePatternBTN.isEnabled = false
        self.manipulateStringsBTN.isEnabled = false
        self.messageTV.text=""
        self.firstStrTF.text=""
        self.secondStrTF.text=""
        self.firstNumLBL.text=""
        self.secondNumLBL.text=""
    }
}

