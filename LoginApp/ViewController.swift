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
    
    
    @IBAction func didPressLoginButton(_ sender: Any) {
        
        let deadline = DispatchTime.now() + .seconds(3)
        
        DispatchQueue.main.asyncAfter(deadline: deadline) {
            print("Login pressed")
            
            self.performSegue(withIdentifier: "segue.Main.loginToMainApp", sender: self.usernameTextField.text)
        }
        

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if let detailVC = segue.destination as? DetailViewController, let username = sender as? String {
            detailVC.username = username
        }
    }
    

}

