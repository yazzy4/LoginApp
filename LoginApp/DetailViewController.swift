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
    
    var username: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let unwrappedUsername = username else { return }
        greetingLabel.text = "Hello, \(unwrappedUsername)"

    }


}
