//
//  MainWireframe.swift
//  Mercadona Market
//
//  Created by Franco Casas on 27/04/2020.
//  Copyright © 2020 Franco Casas. All rights reserved.
//

import Foundation
import UIKit

class MainWireframe {
    
    static func navigateToHomeScreen(from context: UIViewController) {
        let user = SessionHelper().getUser()
        
        if user != nil {    // navegar a otra pantalla en caso de no ser nil
            ExpensesWireframe.navigateToMyExpense(from: context)
//            ExpensesWireframe.navigateToNewExpense(from: context)
        } else {
            LoginWireframe.navigateToLogin(from: context)
        }
        
        
    }
    
}
