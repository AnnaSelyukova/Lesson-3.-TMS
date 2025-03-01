//
//  FirstViewController.swift
//  NavigationHomeWork10
//
//  Created by macbook on 19.12.2024.
//

import UIKit

class FirstViewController: UIViewController {

    lazy var secondViewController: UIViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: "SecondViewController")
    }()

    @IBOutlet weak var button: UIButton!



    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.prefersLargeTitles = true
        title = "FirstViewController"
    }
    


    @IBAction func actionButton(_ sender: Any) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let viewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController")
//        present(secondViewController, animated: true)
        if let navigationController {
            navigationController.pushViewController(secondViewController, animated: true)
        } else {
            secondViewController.modalPresentationStyle = .fullScreen
            present(secondViewController, animated: true)
        }
    }

}
