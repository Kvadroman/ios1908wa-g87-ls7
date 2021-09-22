//
//  ViewController.swift
//  ios1908wa-g87-ls7
//
//  Created by Ивченко Антон on 21.09.2021.
//

import UIKit

protocol MainViewControllerDelegate: AnyObject {
    func update (name: String, lastName: String)
    
}


class MainViewController: UIViewController, MainViewControllerDelegate {
    override func viewWillAppear(_ animated: Bool) {
       
        
    }
    func update(name: String, lastName: String) {
        nameLastNameLabel.text = name + " " + lastName
    }

    @IBOutlet weak var nameLastNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc2 = segue.destination as? SecondViewController {
            vc2.nameFromFirstViewController = nameTextField.text!

        }
        
    }
    
    var nameLastNameLabelFrom3Vc = ThirdViewController()
    
    override func viewDidLoad() {
       
    }
    
    @IBAction func continueButton(_ sender: Any) {
    }
    
}


