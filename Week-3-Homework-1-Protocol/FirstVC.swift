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

class FirstVC: UIViewController, dataSecondVC {
    func getData(myData: [String]) {
        nameLabel.text = myData[0]
        surnameLabel.text = myData[1]
        birthdayLabel.text = myData[2]
    }
    
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func changeClicked(_ sender: Any) {
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
            if let destination = segue.destination as? SecondVC {
                destination.delegateSecondVC = self
            }
    }
    
}

