//
//  ViewController.swift
//  AutorizationWindowOnUIKit
//
//  Created by Руслан Штыбаев on 21.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    let login = "ALEX"
    let password = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


    
    @IBAction func enterButtornPressed() {
        guard login == loginTextField.text && password == passwordTextField.text else {return showAlert(title: "Wrong login or password!", message: "Please will try agane.")}
    }
    
    
    
}

extension ViewController {
    private func showAlert(
        title: String,
        message: String,
        textField: UITextField? = nil
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
    )
        let okAction = UIAlertAction(
            title: "OK",
            style: .default
        )
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
