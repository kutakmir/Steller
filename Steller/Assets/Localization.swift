//
//  Localization.swift
//  Steller
//
//  Created by Miroslav Kutak on 25/03/2020.
//  Copyright © 2020 Curly Bracers. All rights reserved.
//

import Foundation

func Localize(_ stringKey: String) -> String {
    return NSLocalizedString(stringKey, comment: "")
}
