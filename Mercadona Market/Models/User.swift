//
//  User.swift
//  Mercadona Market
//
//  Created by Franco Casas on 23/04/2020.
//  Copyright © 2020 Franco Casas. All rights reserved.
//

import Foundation
import ObjectMapper

class User: Mappable {
    var name: String?
    var authToken: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        name <- map["name"]
        authToken <- map["authToken"]
        
    }
}
