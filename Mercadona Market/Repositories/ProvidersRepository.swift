//
//  ProvidersRepository.swift
//  Mercadona Market
//
//  Created by Franco Casas on 06/05/2020.
//  Copyright © 2020 Franco Casas. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper
 
class ProvidersRepository: BaseRepository {
    
    func getProviders(categoryId: Int, completion: @escaping (_ success: Bool, _ categories: [Provider], _ error: String?) -> Void) {
        requestBuilder.providers(categoryId: categoryId).responseArray { (response: DataResponse<[Provider]>) in
            switch response.result {
            case .success:
                completion(true, response.value ?? [], nil)
            case .failure:
                completion(false, [], self.getError(from: response))
            }
        }
    }
}
