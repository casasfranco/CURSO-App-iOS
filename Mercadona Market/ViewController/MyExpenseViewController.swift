//
//  MyExpenseViewController.swift
//  Mercadona Market
//
//  Created by Franco Casas on 01/05/2020.
//  Copyright © 2020 Franco Casas. All rights reserved.
//

import Foundation
import UIKit

protocol MyExpensePresenterProtocol: class {
    func logout()
    func newExpenseTapped()
}

class MyExpenseViewController: UIViewController {
    var presenter: MyExpensePresenterProtocol?
    
    @IBOutlet private var button: UIButton?
    @IBOutlet private var buttonNewExpenses: UIButton?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    @IBAction private func logoutTapped() {
        print("logoutTapped")
        presenter?.logout()
    }
    
    @IBAction private func newExpenseTapped() {
        print("newExpenseTapped")
        presenter?.newExpenseTapped()
    }
    
    
    private func setupUI() {
        button?.layer.cornerRadius = 8
        buttonNewExpenses?.layer.cornerRadius = 8
    }
    
}




extension MyExpenseViewController: MyExpenseViewProtocol {
    
    //Cerrar Sesion - Luego mover al boton
    func showLogoutSuccess() {
        MainWireframe.navigateToHomeScreen(from: self) //Envio al frame para iniciar sesión
        let alert = UIAlertController(title: "", message: "Se ha cerrado sesión correctamente", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
        }
    
    func navivigateToNewExpense() {
        ExpensesWireframe.navigateToNewExpense(from: self)
    }
    
}
