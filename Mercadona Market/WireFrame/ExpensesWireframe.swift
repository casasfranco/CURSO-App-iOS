//
//  ExpensesWireframe.swift
//  Mercadona Market
//
//  Created by Franco Casas on 27/04/2020.
//  Copyright © 2020 Franco Casas. All rights reserved.
//

import Foundation
import UIKit

class ExpensesWireframe {
    
    static func navigateToNewExpense(from context: UIViewController) {
        let storyboard = UIStoryboard(name: "NewExpenseViewController", bundle: .main)
        let newExpenseVC = storyboard.instantiateViewController(identifier: "NewExpenseViewController") as NewExpenseViewController
        let presenter = NewExpensePresenter(view: newExpenseVC)
        newExpenseVC.presenter = presenter
        
        context.navigationController?.pushViewController(newExpenseVC, animated: true)
    }
}
