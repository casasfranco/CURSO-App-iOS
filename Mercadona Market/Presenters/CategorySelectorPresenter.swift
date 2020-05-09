//
//  CategorySelectorPresenter.swift
//  Mercadona Market
//
//  Created by Franco Casas on 06/05/2020.
//  Copyright © 2020 Franco Casas. All rights reserved.
//

import Foundation

protocol CategorySelectorDelegate: class {
    func categoryWasSelected(_ category: Category)
}

protocol CategorySelectorViewProtocol: class {
    func show(categories: [Category])
}

class CategorySelectorPresenter {

    let repository = CategoriesRepository()
    var categories: [Category] = []
    var result: Bool = false
    
    weak var view: CategorySelectorViewProtocol?
    var delegate: CategorySelectorDelegate?

    
    init(view: CategorySelectorViewProtocol?) {
        self.view = view
    }
}

extension CategorySelectorPresenter: SelectorPresenterProtocol {

    func fetchData() {
        repository.getCategories { (result, categories, error) in
            if (result) {
                self.categories = categories ?? []
                self.view?.show(categories: categories ?? [])
            } else {
                print("Error getCategories -> case failure")
            }
            
        }
    }

    func elementSelected(at index: Int) {
        let selectedCategory = categories[index]
        delegate?.categoryWasSelected(selectedCategory)
    }
}
