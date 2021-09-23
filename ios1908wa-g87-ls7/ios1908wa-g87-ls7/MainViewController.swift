//
//  ViewController.swift
//  ios1908wa-g87-ls7
//
//  Created by Ивченко Антон on 21.09.2021.
//

import UIKit

//protocol MainViewControllerDelegate {
//    func update (name: String, lastName: String)
//}

class MainViewController: UIViewController {

    @IBOutlet weak var nameLastNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "SecondViewController" else { return }
        if let vc2 = segue.destination as? SecondViewController {
            vc2.nameFromFirstViewController = nameTextField.text!
        }
    }
    
    @IBAction func continueButton(_ sender: Any) {
    }

    @IBAction func returnToFirst(unwindSegue: UIStoryboardSegue) {
        if let fullName = unwindSegue.source as? ThirdViewController {
            nameLastNameLabel.isHidden = false
            nameLastNameLabel.text = fullName.fullname
        }
    }
}



