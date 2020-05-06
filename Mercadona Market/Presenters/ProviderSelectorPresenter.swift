//
//  ProviderSelectorPresenter.swift
//  Mercadona Market
//
//  Created by Franco Casas on 06/05/2020.
//  Copyright © 2020 Franco Casas. All rights reserved.
//

import Foundation

protocol ProviderSelectorViewProtocol: class {
    func show(providers: [Provider])
}

class ProviderSelectorPresenter {

    let repository = ProvidersRepository()
    var providers: [Provider] = []
    var result: Bool = false
    
    weak var view: ProviderSelectorViewProtocol?

    init(view: ProviderSelectorViewProtocol?) {
        self.view = view
    }
}

extension ProviderSelectorPresenter: SelectorPresenterProtocol {

    func fetchData() {
        // Aqui en categoryId deberíamos pasar el id de la categoria seleccionada
        repository.getProviders(categoryId: 1) { (result, providers, error) in
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
        print(selectedProvider.name)
    }
}
