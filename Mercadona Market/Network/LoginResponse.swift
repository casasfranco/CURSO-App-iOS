//
//  LoginResponse.swift
//  Mercadona Market
//
//  Created by Franco Casas on 23/04/2020.
//  Copyright © 2020 Franco Casas. All rights reserved.
//

import Foundation
import ObjectMapper

class LoginResponse: Mappable {
    
    var user: User?
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        user <- map["user"]
    }
}
