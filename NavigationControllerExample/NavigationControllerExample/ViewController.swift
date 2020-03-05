//
//  ViewController.swift
//  NavigationControllerExample
//
//  Created by Hasan on 27/02/2020.
//  Copyright © 2020 Hasan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        self.title = "Navigation Controller"
        makeNavigationBar()
        
        // Do any additional setup after loading the view.
    }

    func makeNavigationBar() {
        let width = self.view.frame.width
        let navigationBar = UINavigationBar(frame: CGRect(x: 0, y: 120, width: width, height: 60))
        self.view.addSubview(navigationBar)
        let navigationItem = UINavigationItem(title: "Custom Nav Bar")
        let closeButton = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(action))
        navigationItem.leftBarButtonItem = closeButton
        navigationBar.setItems([navigationItem], animated: false)
    }

    @objc func action() {
        print("pressed")
        let secondVC = SecondViewController()
        self.navigationController?.pushViewController(secondVC, animated: true)
    }




}

