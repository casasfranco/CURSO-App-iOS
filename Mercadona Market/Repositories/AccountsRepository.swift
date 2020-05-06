//
//  AccountsRepository.swift
//  Mercadona Market
//
//  Created by Franco Casas on 06/05/2020.
//  Copyright © 2020 Franco Casas. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper
import AlamofireObjectMapper

class AccountsRepository: BaseRepository {
    
    
    func getAccounts(completion: @escaping ([Account]?, String?) -> Void) {
        
        requestBuilder.accounts().responseArray { (dataResponse: DataResponse<[Account]>) in
            switch dataResponse.result {
            case .success:
                completion(dataResponse.value, nil)
            case .failure:
                completion(nil, self.getError(from: dataResponse))
            }
        }
    }
    
    
}
