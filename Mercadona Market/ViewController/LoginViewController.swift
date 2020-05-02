//
//  Login.swift
//  Mercadona Market
//
//  Created by Franco Casas on 15/04/2020.
//  Copyright © 2020 Franco Casas. All rights reserved.
//

import Foundation
import UIKit

protocol LoginPresenterProtocol: class{
    func login(username: String, password: String)
}

class LoginViewController: UIViewController {
    @IBOutlet private var usernameTextField: UITextField?
    @IBOutlet private var passwordTextField: UITextField?
    @IBOutlet private var button: UIButton?
    
    
    var presenter: LoginPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button?.layer.cornerRadius = 8
    }
    
    @IBAction private func buttonTapped() {
        if let username = usernameTextField?.text, let password = passwordTextField?.text {
            presenter?.login(username: username, password: password)
        }
    }
}


extension LoginViewController: LoginViewProtocol {
    func show(error: String) {
        let alert = UIAlertController(title: "", message: error, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    func showLoginSuccess() {
        print("showLoginSuccess")
        MainWireframe.navigateToHomeScreen(from: self)
    }
    
    
}
