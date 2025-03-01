//
//  NavigationController.swift
//  BaseNavigation
//
//  Created by macbook on 26.12.2024.
//

import UIKit

class NavigationController: UINavigationController {

    var textFromViewController: String? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(textFromViewController)
    }

}
