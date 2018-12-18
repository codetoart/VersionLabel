//
//  ViewController.swift
//  VersionLabel
//
//  Created by CodeToArt on 18/12/18.
//  Copyright © 2018 codetoart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let vl = VersionLabel()
        vl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(vl)
        NSLayoutConstraint.activate([
            vl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            vl.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
