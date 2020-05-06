//
//  SelectorTableViewCell.swift
//  Mercadona Market
//
//  Created by Franco Casas on 06/05/2020.
//  Copyright © 2020 Franco Casas. All rights reserved.
//

import Foundation
import UIKit

class SelectorTableViewCell: UITableViewCell {
    
    @IBOutlet private var label: UILabel?
    
    func set(text: String) {
        label?.text = text
    }
    
}
