//
//  InformationViewController.swift
//  AutorizationWindowOnUIKit
//
//  Created by Руслан Штыбаев on 10.03.2022.
//

import UIKit

class InformationViewController: UIViewController {
    
    var user: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.fullName

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoVC = segue.destination as? MoreInfoViewController else {return}
        infoVC.moreInfo = user.info
    }

}
