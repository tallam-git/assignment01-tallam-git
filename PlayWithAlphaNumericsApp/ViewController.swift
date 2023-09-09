//
//  ViewController.swift
//  PlayWithAlphaNumericsApp
//
//  Created by Charan on 9/8/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var headerLBL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.headerLBL.text = String(format: "%@\nPlay with AlphaNumerics™️","\u{0c38}\u{0c4d}\u{0c35}\u{0c3e}\u{0c17}\u{0c24}\u{0c02}")
    }


}

