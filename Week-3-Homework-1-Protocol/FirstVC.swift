//
//  ViewController.swift
//  Week-3-Homework-1-Protocol
//
//  Created by Hakan Baran on 23.12.2022.
//

import UIKit


protocol dataSecondVC {
    func getData(myData: [String])
}

class FirstVC: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func changeClicked(_ sender: Any) {
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
}

