//
//  SelectorWireframe.swift
//  Mercadona Market
//
//  Created by Franco Casas on 04/05/2020.
//  Copyright © 2020 Franco Casas. All rights reserved.
//

import Foundation
import UIKit

class SelectorWireframe {
    
    static func navigateToAccountSelector(from context: UIViewController) {
        let storyboard = UIStoryboard(name: "SelectorViewController", bundle: .main)
        let vc = storyboard.instantiateViewController(identifier: "SelectorViewController") as SelectorViewController
        
        context.navigationController?.pushViewController(vc, animated: true)
    }
    
    static func navigateToCategorySelector(from context: UIViewController) {
        let storyboard = UIStoryboard(name: "SelectorViewController", bundle: .main)
        let vc = storyboard.instantiateViewController(identifier: "SelectorViewController") as SelectorViewController
        
        context.navigationController?.pushViewController(vc, animated: true)
    }
    
    static func navigateToProviderSelector(from context: UIViewController) {
        let storyboard = UIStoryboard(name: "SelectorViewController", bundle: .main)
        let vc = storyboard.instantiateViewController(identifier: "SelectorViewController") as SelectorViewController
        
        context.navigationController?.pushViewController(vc, animated: true)
    }
    
}
