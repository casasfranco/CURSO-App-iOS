//
//  Provider.swift
//  Mercadona Market
//
//  Created by Franco Casas on 06/05/2020.
//  Copyright © 2020 Franco Casas. All rights reserved.
//

import Foundation
import ObjectMapper
 
class Provider: Mappable {
    
    var id: Int?
    var name: String?
    var description: String?
 
    init() {}
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        description <- map["description"]
    }
}
