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
    
    static func navigateToMyExpense(from context: UIViewController) {
        let storyboard = UIStoryboard(name: "MyExpenseViewController", bundle: .main)
        let myExpenseVC = storyboard.instantiateViewController(identifier: "MyExpenseViewController") as MyExpenseViewController
        let presenter = MyExpensePresenter(view: myExpenseVC)
        myExpenseVC.presenter = presenter
        
        context.navigationController?.pushViewController(myExpenseVC, animated: true)
    }
    
    
    static func navigateToNewExpense(from context: UIViewController) {
        let storyboard = UIStoryboard(name: "NewExpenseViewController", bundle: .main)
        let newExpenseVC = storyboard.instantiateViewController(identifier: "NewExpenseViewController") as NewExpenseViewController
        let presenter = NewExpensePresenter(view: newExpenseVC)
        newExpenseVC.presenter = presenter
        
        context.navigationController?.pushViewController(newExpenseVC, animated: true)
    }
}
