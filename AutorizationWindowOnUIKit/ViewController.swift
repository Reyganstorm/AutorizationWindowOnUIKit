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

    @IBAction func enterButtornPressed() {
        guard login == loginTextField.text && password == passwordTextField.text else {return showAlert(title: "Wrong login or password!", message: "Please will try agane.")}
    }
    
    @IBAction func forgotLogin() {
        showAlert(title: "Ooops!", message: "Your login is ALEX" )
    }
    
    @IBAction func forgotPassword() {
        showAlert(title: "Big oops!", message: "Your password is Password")
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
