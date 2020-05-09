//
//  ProviderSelectorPresenter.swift
//  Mercadona Market
//
//  Created by Franco Casas on 06/05/2020.
//  Copyright © 2020 Franco Casas. All rights reserved.
//

import Foundation

protocol ProviderSelectorDelegate: class {
    func providerWasSelected(_ provider: Provider)
}

protocol ProviderSelectorViewProtocol: class {
    func show(providers: [Provider])
}

class ProviderSelectorPresenter {

    let repository = ProvidersRepository()
    var providers: [Provider] = []
    var result: Bool = false
    
    weak var view: ProviderSelectorViewProtocol?
    var delegate: ProviderSelectorDelegate?
    var categoryId: Int?
    
    init(view: ProviderSelectorViewProtocol?) {
        self.view = view
    }
}

extension ProviderSelectorPresenter: SelectorPresenterProtocol {

    func fetchData() {
       guard let categoryId = categoryId else { return }
        repository.getProviders(categoryId: categoryId) { (result, providers, error) in
            if (result) {
                self.providers = providers ?? []
                self.view?.show(providers: providers ?? [])
            } else {
                print("Error getProviders -> case failure")
            }
            
        }
    }

    func elementSelected(at index: Int) {
        let selectedProvider = providers[index]
        delegate?.providerWasSelected(selectedProvider)
    }
}
