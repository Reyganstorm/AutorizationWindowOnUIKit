//
//  MoreInfoViewController.swift
//  AutorizationWindowOnUIKit
//
//  Created by Руслан Штыбаев on 10.03.2022.
//

import UIKit

class MoreInfoViewController: UIViewController {
    
    var moreInfo = ""
    
    @IBOutlet var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        infoLabel.text = moreInfo
    }

}
