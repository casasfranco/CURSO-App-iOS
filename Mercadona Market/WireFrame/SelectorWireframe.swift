//
//  SelectorWireframe.swift
//  Mercadona Market
//
//  Created by Franco Casas on 04/05/2020.
//  Copyright © 2020 Franco Casas. All rights reserved.
//

import Foundation
import UIKit

class SelectorWireframe {
    
    static func navigateToAccountSelector(from context: UIViewController, delegate: AccountSelectorDelegate?) {
        let storyboard = UIStoryboard(name: "SelectorViewController", bundle: .main)
        let vc = storyboard.instantiateViewController(identifier: "SelectorViewController") as SelectorViewController
        
        let presenter = AccountSelectorPresenter(view: vc)
        presenter.delegate = delegate
        vc.presenter = presenter
        
        context.navigationController?.pushViewController(vc, animated: true)
    }
    
    static func navigateToCategorySelector(from context: UIViewController, delegate: CategorySelectorDelegate?) {
        let storyboard = UIStoryboard(name: "SelectorViewController", bundle: .main)
        let vc = storyboard.instantiateViewController(identifier: "SelectorViewController") as SelectorViewController
        
        let presenter = CategorySelectorPresenter(view: vc)
        presenter.delegate = delegate
        vc.presenter = presenter
        
        context.navigationController?.pushViewController(vc, animated: true)
    }
    
    static func navigateToProviderSelector(from context: UIViewController, categoryId: Int, delegate: ProviderSelectorDelegate) {
        let storyboard = UIStoryboard(name: "SelectorViewController", bundle: .main)
        let vc = storyboard.instantiateViewController(identifier: "SelectorViewController") as SelectorViewController
        
        let presenter = ProviderSelectorPresenter(view: vc)
        presenter.delegate = delegate
        presenter.categoryId = categoryId
        vc.presenter = presenter
        
        context.navigationController?.pushViewController(vc, animated: true)
    }
    
}
