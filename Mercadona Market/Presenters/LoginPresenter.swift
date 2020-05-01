//
//  LoginPresenter.swift
//  Mercadona Market
//
//  Created by Franco Casas on 27/04/2020.
//  Copyright © 2020 Franco Casas. All rights reserved.
//

import Foundation

protocol LoginViewProtocol: class {
    func show(error: String)
    func showLoginSuccess()
}

class LoginPresenter {
    
    weak var view: LoginViewProtocol?
    
    let repository = AuthRepository()
    
    init(view: LoginViewProtocol) {
        self.view = view
    }
    
}

extension LoginPresenter: LoginPresenterProtocol {
    func login(username: String, password: String) {
        repository.login(username: username, password: password) { (user, error) in
            if let user = user {
                SessionHelper().save(user: user)
                self.view?.showLoginSuccess()
            } else {
                self.view?.show(error: error ?? "Ocurrió un error")
            }
        }
    }
}
