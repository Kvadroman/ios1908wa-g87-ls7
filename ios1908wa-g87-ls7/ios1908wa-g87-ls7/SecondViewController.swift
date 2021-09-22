//
//  SecondViewController.swift
//  ios1908wa-g87-ls7
//
//  Created by Ивченко Антон on 21.09.2021.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lastNameTextField2: UITextField!
    var nameFromFirstViewController = ""
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let lastName = segue.destination as? ThirdViewController {
            lastName.lastNameLabelVc3 = lastNameTextField2.text!
        }
        if let name = segue.destination as? ThirdViewController {
            name.nameLabelVc3 = nameFromFirstViewController
        }
    }
    
    @IBAction func continueButton(_ sender: Any) {
        
    }
}




