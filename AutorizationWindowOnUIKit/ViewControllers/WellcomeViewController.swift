//
//  WellcomeViewController.swift
//  AutorizationWindowOnUIKit
//
//  Created by Руслан Штыбаев on 10.03.2022.
//

import UIKit

class WellcomeViewController: UIViewController {
    
    var user = ""

    @IBOutlet var welcomeLabel: UILabel!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user)"
    }
}
