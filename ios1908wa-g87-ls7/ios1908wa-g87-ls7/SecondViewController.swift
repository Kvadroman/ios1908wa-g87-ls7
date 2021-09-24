//
//  SecondViewController.swift
//  ios1908wa-g87-ls7
//
//  Created by Ивченко Антон on 21.09.2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var lastNameTextField2: UITextField!
    @IBOutlet weak var continueButton: UIButton!
    var nameFromFirstViewController = ""
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "ThirdViewController" else {return}
        if let lastName = segue.destination as? ThirdViewController {
            lastName.lastNameLabelVc3 = lastNameTextField2.text!
        }
        guard segue.identifier == "ThirdViewController" else {return}
        if let name = segue.destination as? ThirdViewController {
            name.nameLabelVc3 = nameFromFirstViewController
        }
    }
}





