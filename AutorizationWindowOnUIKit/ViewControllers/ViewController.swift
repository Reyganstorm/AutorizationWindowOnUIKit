//
//  ViewController.swift
//  AutorizationWindowOnUIKit
//
//  Created by Руслан Штыбаев on 21.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let userPerson = Person.getPerson()
    
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBAction func enterButtornPressed() {
        if loginTextField.text != userPerson.login || passwordTextField.text != userPerson.password {
            showAlert(title: "Invalid lofin or password!", message: "Please try againe")
        }
    }
    
    @IBAction func forgotSome(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Ooops!", message: "Your login is \(userPerson.login)" )
        : showAlert(title: "Big oops!", message: "Your password is \(userPerson.password)")
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        for viewController in viewControllers {
            if let welcomeWC = viewController as? WellcomeViewController {
                welcomeWC.user = userPerson.fullName
            }
        }
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

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == loginTextField {
            passwordTextField.becomeFirstResponder()
        } else   {
            enterButtornPressed()
            performSegue(withIdentifier: "ShowView", sender: nil)
        }
        return true
    }
}
