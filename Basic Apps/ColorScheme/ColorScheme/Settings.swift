//
//  Settings.swift
//  ColorScheme
//
//  Created by Omair Qazi on 5/25/20.
//  Copyright © 2020 Omair Qazi. All rights reserved.
//

import Foundation
import UIKit

class Settings {
    var title: UIColor
    var body: UIColor
    var text: UIColor
    
    init(title: UIColor, body: UIColor, text: UIColor) {
        self.title = title
        self.body = body
        self.text = text 
    }
}
