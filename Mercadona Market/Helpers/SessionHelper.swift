//
//  SessionHelper.swift
//  Mercadona Market
//
//  Created by Franco Casas on 27/04/2020.
//  Copyright © 2020 Franco Casas. All rights reserved.
//

import Foundation


class SessionHelper {
    
    let defaults = UserDefaults.standard
    let key = "logged_user"
    
    func save(user: User) {
        defaults.set(user.toJSONString(), forKey: key)
    }
    
    func getUser() -> User? {
        if let jsonString = defaults.object(forKey: key) as? String {
            return User(JSONString: jsonString)
        } else {
            return nil
        }
    }
    
    func saveLogout(user: String?) {
        defaults.set(user, forKey: key)
    }
    
}
