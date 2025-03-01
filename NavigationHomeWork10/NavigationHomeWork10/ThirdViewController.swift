//
//  ThirdViewController.swift
//  NavigationHomeWork10
//
//  Created by macbook on 19.12.2024.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    @IBAction func actionBack(_ sender: Any) {
        if let navigationController {
            navigationController.popViewController(animated: true)
        } else {
            dismiss(animated: true)
        }
    }
}
