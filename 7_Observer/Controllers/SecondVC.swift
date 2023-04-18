//
//  SecondVC.swift
//  7_Observer
//
//  Created by apple on 18.04.2023.
//

import UIKit

var secondVCIsListening = false

class SecondVC: UIViewController {

    @IBOutlet weak var titleLbl: UILabel!
   
    @IBOutlet weak var listeningSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if secondVCIsListening {
            listeningSwitch.setOn(true, animated: false)
            switchToggled(listeningSwitch)
            setupObserver()
        }
       
    }
    
    deinit {
        clearObserver()
    }

    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender .isOn {
            self.view.backgroundColor = .green
            self.titleLbl.text = "Listening"
            secondVCIsListening = true
            setupObserver()
        } else {
            self.view.backgroundColor = .darkGray
            self.titleLbl.text = "Not Listening"
            secondVCIsListening = false
            clearObserver()
        }
    }
    
    func clearObserver() {
        NotificationCenter.default.removeObserver(self)
    }
    
    func setupObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(handleNotification), name: .myNotification, object: nil)
    }
    
    @objc func handleNotification(_ sender: Notification) {
        titleLbl.text = sender.userInfo?["name"] as? String
    }
    
}
