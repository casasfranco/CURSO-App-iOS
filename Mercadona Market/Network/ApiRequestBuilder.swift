//
//  ApiRequestBuilder.swift
//  Mercadona Market
//
//  Created by Franco Casas on 22/04/2020.
//  Copyright © 2020 Franco Casas. All rights reserved.
//

import Foundation
import Alamofire

class ApiRequestBuilder: HttpRequestBuilder {
    init() {
        super.init(baseUrl: "http://dev.expenses.vortexsoftware.com.ar/api/v1/", defaultSessionManager: HttpManager.shared)
    }
    
    func login(username: String, password: String) -> DataRequest {
        let params = [
            "username": username,
            "password": password
        ]
        
        return buildRequest(path: ApiUrls.login, method: .post, params: params)
    }
    
    func accounts() -> DataRequest {
        return buildRequest(path: ApiUrls.accounts, method: .get)
    }
    
    func categories() -> DataRequest {
        return buildRequest(path: ApiUrls.categories, method: .get)
    }
    
    func providers(categoryId: Int) -> DataRequest {
        let params = [
            "categoryId": categoryId
        ]
        return buildRequest(path: ApiUrls.providers, method: .get, params: params)
    }


    
}
