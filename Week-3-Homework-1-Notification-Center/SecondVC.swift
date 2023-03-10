//
//  SecondVC.swift
//  Week-3-Homework-1-Notification-Center
//
//  Created by Hakan Baran on 23.12.2022.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var surnameText: UITextField!
    @IBOutlet weak var birthdayText: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func saveButtonClicked(_ sender: Any) {
        
        let dataArray = ["name": nameText.text!, "surname" : surnameText.text!, "birthday" : birthdayText.text!]
        
        NotificationCenter.default.post(name: .notificationFirstVC, object: nil, userInfo: dataArray)
        
        dismiss(animated: true)
    }
    
    

}
