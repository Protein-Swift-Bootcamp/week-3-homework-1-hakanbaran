//
//  SecondVC.swift
//  Week-3-Homework-1-Protocol
//
//  Created by Hakan Baran on 23.12.2022.
//

import UIKit

class SecondVC: UIViewController {
    
    var delegateSecondVC : dataSecondVC?

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var surnameText: UITextField!
    @IBOutlet weak var birthdayText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func saveClicked(_ sender: Any) {
        dismiss(animated: true)
    }
    
    

}
