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
    
    
    func getAccounts(completion: @escaping (_ success: Bool, _ accounts: [Account], _ error: String?) -> Void) {
        requestBuilder.accounts().responseArray { (response: DataResponse<[Account]>) in
            switch response.result {
            case .success:
                completion(true, response.value ?? [], nil)
            case .failure:
                completion(false, [], self.getError(from: response))
            }
        }
    }
}
