//
//  ViewController.swift
//  LoginApp
//
//  Created by Yaz Burrell on 6/2/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    let correctUsername = "Yass"
    let correctPassword = "pass123"
    
    
    @IBAction func didPressLoginButton(_ sender: Any) {
        
        guard
            usernameTextField.text == correctUsername,
            passwordTextfield.text == correctPassword
        else { incorrectLoginAlert(); return }
        
        let deadline = DispatchTime.now() + .seconds(3)
        
        DispatchQueue.main.asyncAfter(deadline: deadline) {
            print("Login pressed")
            
            self.performSegue(withIdentifier: "segue.Main.loginToMainApp", sender: self.usernameTextField.text)
        }

    }
    
    func incorrectLoginAlert(){
        
        let message = "Incorrect username or password. Please try again"
        let alert = UIAlertController(title: "Login Failed", message: message, preferredStyle:.alert)
        
        let dismissAction = UIAlertAction(title: "Dismiss", style: .cancel)
        
        alert.addAction(dismissAction)
        
        present(alert, animated: true)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if let detailVC = segue.destination as? DetailViewController, let username = sender as? String {
            detailVC.username = username
        }
    }
    

}

