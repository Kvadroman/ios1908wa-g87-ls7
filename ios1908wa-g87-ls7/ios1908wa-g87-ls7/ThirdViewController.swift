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
    @IBOutlet weak var saveButton: UIButton!
    var nameLabelVc3 = ""
    var lastNameLabelVc3 = ""
    var fullname = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assignFunc()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        fullname = "\(nameLabelVc3) \(lastNameLabelVc3)"
    }
    
    func assignFunc() {
        nameLabel3.text = nameLabelVc3
        lastNameLabel3.text = lastNameLabelVc3
    }
}


