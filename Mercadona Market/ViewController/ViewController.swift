//
//  ViewController.swift
//  Mercadona Market
//
//  Created by Franco Casas on 15/04/2020.
//  Copyright © 2020 Franco Casas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private var label: UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        MainWireframe.navigateToHomeScreen(from: self)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    @IBAction private func buttonTapped() {
        label?.textColor = UIColor.red
        print("algo")
    }

}

