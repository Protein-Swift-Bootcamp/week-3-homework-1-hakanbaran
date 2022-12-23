//
//  ViewController.swift
//  Week-3-Homework-1-Notification-Center
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
        
        let notificationCenter = NotificationCenter.default
        notificationCenter.addObserver(self, selector: #selector(getData(myData:)), name: .notificationFirstVC, object: nil)
        
    }
    
    @objc func getData( myData : Notification) {
        
        if let data = myData.userInfo as? [String : String] {
            nameLabel.text = data["name"]
            surnameLabel.text = data["surname"]
            birthdayLabel.text = data["birthday"]
        }
        
    }
    
    
    @IBAction func changeButtonClicked(_ sender: Any) {
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
}


extension Notification.Name{
    static let notificationFirstVC = Notification.Name(rawValue: "NotificationFirstVC")
}




