//
//  DetailViewController.swift
//  LoginApp
//
//  Created by Yaz Burrell on 6/2/21.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var greetingLabel: UILabel!
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let unwrappedUser = user else { return }
        greetingLabel.text = "Hello, \(unwrappedUser.name)! You are \(unwrappedUser.age) years old."

    }


}
