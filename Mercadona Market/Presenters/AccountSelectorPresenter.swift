//
//  AccountSelectorPresenter.swift
//  Mercadona Market
//
//  Created by Franco Casas on 06/05/2020.
//  Copyright © 2020 Franco Casas. All rights reserved.
//

import Foundation

protocol AccountSelectorViewProtocol: class {
    func show(accounts: [Account])
}

class AccountSelectorPresenter {
    
    let repository = AccountsRepository()
    var accounts: [Account] = []
    
    weak var view: AccountSelectorViewProtocol?
    
    init(view: AccountSelectorViewProtocol?) {
        self.view = view
    }
    
}

extension AccountSelectorPresenter: SelectorPresenterProtocol {
    func fetchData() {
        repository.getAccounts { (accounts, error) in
            self.accounts = accounts ?? []
            self.view?.show(accounts: accounts ?? [])
        }
    }
    
    func elementSelected(at index: Int) {
        let selectedAccount = accounts[index]
        print(selectedAccount.name)
    }
    
    
}
