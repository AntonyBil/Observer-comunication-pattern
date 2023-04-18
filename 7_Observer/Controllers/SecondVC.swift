//
//  SecondVC.swift
//  7_Observer
//
//  Created by apple on 18.04.2023.
//

import UIKit

var secondVCIsListening = false

class SecondVC: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var listeningSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if secondVCIsListening {
            listeningSwitch.setOn(true, animated: false)
            switchToggled(listeningSwitch)
        }
       
    }

    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender .isOn {
            self.view.backgroundColor = .green
            titleLabel.text = "Listening"
            secondVCIsListening = true
        } else {
            self.view.backgroundColor = .darkGray
            titleLabel.text = "Not Listening"
            secondVCIsListening = false
        }
    }
    
}
