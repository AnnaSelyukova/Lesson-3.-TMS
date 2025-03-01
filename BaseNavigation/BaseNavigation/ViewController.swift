//
//  ViewController.swift
//  BaseNavigation
//
//  Created by macbook on 20.12.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var segmentControl: UISegmentedControl!


    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let destinationVC = segue.destination

//        if segue.identifier == "firstSegue" {
//            destinationVC.view.backgroundColor = .yellow
//        } else {
//            destinationVC.view.backgroundColor = .green
//        }

        switch segue.identifier {
        case "firstSegue":
            destinationVC.view.backgroundColor = .yellow
            (destinationVC as? OneViewController)?.textFromViewController = textField.text

        case "secondSegue":
            destinationVC.view.backgroundColor = .green
        case "third":
            destinationVC.view.backgroundColor = .purple
        default:
            break
        }
    }

    @IBAction func openViewController(_ sender: Any) {

        switch segmentControl.selectedSegmentIndex {
        case 0:
            performSegue(withIdentifier: "firstSegue", sender: self)
        case 1:
            performSegue(withIdentifier: "secondSegue", sender: self)
        case 2:
            performSegue(withIdentifier: "third", sender: self)
        default:
            break
        }

//        if segmentControl.selectedSegmentIndex == 0 {
//            performSegue(withIdentifier: "firstSegue", sender: self)
//        } else {
//            performSegue(withIdentifier: "secondSegue", sender: self)
//
//        }
    }

    @IBAction func openSecondStoryboard(_ sender: Any) {

        let storyboard = UIStoryboard(name: "SecondStoryboard", bundle: nil)
        let secondVC = storyboard.instantiateInitialViewController() ?? UIViewController()
        secondVC.view.backgroundColor = .orange
        (secondVC as? NavigationController)?.textFromViewController  = textField.text
        present(secondVC, animated: true)
    }
    
}

