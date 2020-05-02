//
//  MyExpenseViewController.swift
//  Mercadona Market
//
//  Created by Franco Casas on 01/05/2020.
//  Copyright © 2020 Franco Casas. All rights reserved.
//

import Foundation


protocol MyExpenseViewProtocol: class {
    func showLogoutSuccess()
}

class MyExpensePresenter {
    
    weak var view: MyExpenseViewProtocol?
    let user = SessionHelper().getUser()
    
    init(view: MyExpenseViewProtocol) {
        self.view = view
    }
    
}

extension MyExpensePresenter: MyExpensePresenterProtocol {
    func logout() {
        print(user?.authToken)
        print(user?.name)
        SessionHelper().saveLogout(user: nil)
        view?.showLogoutSuccess()
    }
    
    
}
