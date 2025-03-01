//
//  OneViewController.swift
//  BaseNavigation
//
//  Created by macbook on 20.12.2024.
//

import UIKit

class OneViewController: UIViewController {

    var textFromViewController: String? = nil
    
    @IBOutlet weak var label: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()


    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        label.text = textFromViewController
    }
    

    @IBAction func exit(_ sender: Any) {
        if let sender = sender as? UIButton {
            dismiss(animated: true)
        } else {
            view.backgroundColor = .cyan
        }
    }
    
    @IBAction func switched(_ sender: UISwitch) {

//        if sender.isOn {
//            view.backgroundColor = .red
//        } else {
//            view.backgroundColor = .gray
//        }
    }

}
