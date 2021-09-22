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
    var fullname = ""

    @IBAction func saveButton(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel3.text = nameLabelVc3
        lastNameLabel3.text = lastNameLabelVc3
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        fullname = "\(nameLabelVc3) \(lastNameLabelVc3)"
    }
}

