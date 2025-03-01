//
//  XibViewController.swift
//  BaseNavigation
//
//  Created by macbook on 23.12.2024.
//

import UIKit

class XibViewController: UIViewController {

    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func `switch`(_ sender: UISwitch) {
        label.isHidden = !sender.isOn

//        if sender.isOn {
//            label.isHidden = false
//        } else {
//            label.isHidden = true
//    }
}

    @IBAction func slide(_ sender: UISlider) {
        label.text = "\(sender.value)"
    }
}
