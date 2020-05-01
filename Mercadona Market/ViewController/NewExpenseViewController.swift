//
//  NewExpenseViewController.swift
//  Mercadona Market
//
//  Created by Franco Casas on 27/04/2020.
//  Copyright © 2020 Franco Casas. All rights reserved.
//

import Foundation
import UIKit

protocol NewExpensePresenterProtocol: class {
    
}

class NewExpenseViewController: UIViewController {
    
    var presenter: NewExpensePresenterProtocol?
    
}

extension NewExpenseViewController: NewExpenseViewProtocol {
    
}
