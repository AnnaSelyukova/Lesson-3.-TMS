//
//  SecondViewController.swift
//  NavigationHomeWork10
//
//  Created by macbook on 19.12.2024.
//

import UIKit

class SecondViewController: UIViewController {

    lazy var thirdViewController: UIViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: "ThirdViewController")
    }()

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    @IBAction func actionNext(_ sender: Any) {
        if let navigationController {
            navigationController.pushViewController(thirdViewController, animated: true)
        } else {
            thirdViewController.modalPresentationStyle = .fullScreen
            present(thirdViewController, animated: true)
        }
    }


    @IBAction func actionBack(_ sender: Any) {
        if let navigationController {
            navigationController.popViewController(animated: true)
        } else {
            dismiss(animated: true)
        }
    }


}
