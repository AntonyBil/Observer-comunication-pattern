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
    //clear Observer when the view is deinit
    deinit {
        clearObserver()
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn {
            self.view.backgroundColor = .green
            titleLabel.text = "Listening"
            setupObserver()
        } else {
            self.view.backgroundColor = .darkGray
            titleLabel.text = "Not Listening"
            clearObserver()
        }
    }
    
    //clear Observer
    func clearObserver() {
        NotificationCenter.default.removeObserver(self)
    }
    
    //setup Observer
    func setupObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(handleNotification), name: .myNotification, object: nil)
    }
    
    @objc func handleNotification(_ sender: Notification) {
        titleLabel.text = sender.userInfo?["name"] as? String
    }
    

}

