//
//  ThirdVC.swift
//  7_Observer
//
//  Created by apple on 18.04.2023.
//

import UIKit

class ThirdVC: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func saveButtonClicked(_ sender: UIButton) {
        //create notification
        NotificationCenter.default.post(name: .myNotification, object: nil, userInfo: ["name": nameField.text ?? ""])
    }
    

}

extension NSNotification.Name {
    static let myNotification = NSNotification.Name("antony")
}
