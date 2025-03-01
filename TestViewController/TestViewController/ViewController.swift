//
//  ViewController.swift
//  TestViewController
//
//  Created by macbook on 17.12.2024.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var testView: UIView!
    var test = 0

    lazy var testViewController: UIViewController =  {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: "TestViewController") as! TestViewController
    }()

    @IBOutlet weak var button: UIButton!

    override func loadView() {
        super.loadView()
        print("ViewController\(#function)")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewController\(#function)")

        testView.layer.cornerRadius = -10

        testView.layer.borderWidth = 5
        testView.layer.backgroundColor = UIColor.red.cgColor
        testView.layer.borderColor = UIColor.brown.cgColor

        navigationController?.navigationBar.prefersLargeTitles = true
        title = "ViewController"
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewController\(#function)")
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("ViewController\(#function)")
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("ViewController\(#function)")

        let height = testView.frame.size.height
        testView.layer.cornerRadius = height/2
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewController\(#function)")

        print("TEST: \(test)")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("ViewController\(#function)")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("ViewController\(#function)")
    }

    deinit {
        print("ViewController\(#function)")
    }

    @IBAction func buttonAction(_ sender: Any) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let viewController = storyboard.instantiateViewController(withIdentifier: "TestViewController")
//
//        let vc = TestViewController()
//        vc.view.backgroundColor = .red

//        present(testViewController, animated: true)
        testViewController.view.backgroundColor = .red

        if let navigationController {
            navigationController.pushViewController(testViewController, animated: true)
        } else {
            testViewController.modalPresentationStyle = .fullScreen
            present(testViewController, animated: true)
        }

    }

}

