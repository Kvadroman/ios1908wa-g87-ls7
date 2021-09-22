//
//  ThirdViewController.swift
//  ios1908wa-g87-ls7
//
//  Created by Ивченко Антон on 21.09.2021.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var nameLabel3: UILabel!
    @IBOutlet weak var lastNameLabel3: UILabel!
    var nameLabelVc3 = ""
    var lastNameLabelVc3 = ""
    weak var delegate: MainViewControllerDelegate?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel3.text = nameLabelVc3
        lastNameLabel3.text = lastNameLabelVc3        
    }
  
    @IBAction func saveButton(_ sender: Any) {
        delegate?.update(name: nameLabelVc3, lastName: lastNameLabelVc3)

    }
}
