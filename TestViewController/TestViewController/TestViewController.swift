//
//  TestViewController.swift
//  TestViewController
//
//  Created by macbook on 17.12.2024.
//

import UIKit

class TestViewController: UIViewController {


    override func loadView() {
        super.loadView()
        print("TestViewController\(#function)")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("TestViewController\(#function)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("TestViewController\(#function)")
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("TestViewController\(#function)")
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("TestViewController\(#function)")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("TestViewController\(#function)")
        let mainViewController =  navigationController?.viewControllers[0] as? ViewController
        mainViewController?.test = 1
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("TestViewController\(#function)")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("TestViewController\(#function)")
    }

    deinit {
        print("TestViewController\(#function)")
    }

    @IBAction func actionBut(_ sender: Any) {

        if let navigationController {
            navigationController.popViewController(animated: true)
        } else {
            dismiss(animated: true)
        }
    }
    
}
