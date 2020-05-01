//
//  LoginWireframe.swift
//  Mercadona Market
//
//  Created by Franco Casas on 27/04/2020.
//  Copyright © 2020 Franco Casas. All rights reserved.
//

import Foundation
import UIKit

class LoginWireframe {
    
    static func navigateToLogin(from context: UIViewController) {
        
        let storyboard = UIStoryboard(name: "LoginViewController", bundle: .main)       //Asigno a la constante un storyboard
        
        let loginVC = storyboard.instantiateViewController(identifier: "LoginViewController")  as LoginViewController  //Asigno al storyboard un viewcontroller
        
        let presenter = LoginPresenter(view: loginVC)
        loginVC.presenter = presenter
        
        
        context.navigationController?.setViewControllers([loginVC], animated: true)     //Cargo en la pila (comienza aqui)
    }
}
