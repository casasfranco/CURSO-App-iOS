//
//  AccountSelectorPresenter.swift
//  Mercadona Market
//
//  Created by Franco Casas on 06/05/2020.
//  Copyright © 2020 Franco Casas. All rights reserved.
//

import Foundation

protocol AccountSelectorDelegate: class {
    func accountWasSelected(_ account: Account)
}

protocol AccountSelectorViewProtocol: class {
    func show(accounts: [Account])
}

class AccountSelectorPresenter {
    
    let repository = AccountsRepository()
    var accounts: [Account] = []
    var result: Bool = false
    
    weak var view: AccountSelectorViewProtocol?
    var delegate: AccountSelectorDelegate?
    
    init(view: AccountSelectorViewProtocol?) {
        self.view = view
    }
    
}

extension AccountSelectorPresenter: SelectorPresenterProtocol {
    func fetchData() {
        repository.getAccounts { (result,accounts, error) in
            if (result) {
                self.accounts = accounts ?? []
                self.view?.show(accounts: accounts ?? [])
            } else {
                print("Error getAccounts -> case failure")
            }
            
        }
    }
    
    func elementSelected(at index: Int) {
        let selectedAccount = accounts[index]
        delegate?.accountWasSelected(selectedAccount)
    }
    
    
}
