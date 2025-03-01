//
//  SecondStoryboardViewController.swift
//  BaseNavigation
//
//  Created by macbook on 20.12.2024.
//

import UIKit

class SecondStoryboardViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func openXib(_ sender: Any) {
//        present(XibViewController(), animated: true)
        navigationController?.pushViewController(XibViewController(), animated: true)
    }

}
