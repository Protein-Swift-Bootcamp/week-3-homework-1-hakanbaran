//
//  ViewController.swift
//  Week-3-Homework-1-Closure
//
//  Created by Hakan Baran on 23.12.2022.
//

import UIKit

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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SecondVC {
            
            destination.secondVcClosureDataBack = { dataArray in
                self.nameLabel.text = dataArray[0]
                self.surnameLabel.text = dataArray[1]
                self.birthdayLabel.text = dataArray[2]
                
            }
        }
    }
    
    
}

