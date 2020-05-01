//
//  NewExpensePresenter.swift
//  Mercadona Market
//
//  Created by Franco Casas on 27/04/2020.
//  Copyright © 2020 Franco Casas. All rights reserved.
//

import Foundation

protocol NewExpenseViewProtocol: class {
    
}

class NewExpensePresenter {
    
    weak var view: NewExpenseViewProtocol?
    
    init(view: NewExpenseViewProtocol) {
        self.view = view
    }
    
}

extension NewExpensePresenter: NewExpensePresenterProtocol {
    
}
