//
//  ViewController.swift
//  7_Observer
//
//  Created by apple on 18.04.2023.
//

import UIKit

class FirstVC: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn {
            self.view.backgroundColor = .green
            titleLabel.text = "Listening"
        } else {
            self.view.backgroundColor = .darkGray
            titleLabel.text = "Not Listening"
        }
        
    }
    

}

