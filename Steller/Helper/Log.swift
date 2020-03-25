//
//  Log.swift
//  Steller
//
//  Created by Miroslav Kutak on 25/03/2020.
//  Copyright © 2020 Curly Bracers. All rights reserved.
//

import Foundation

func Log(_ items: Any..., separator: String = " ", terminator: String = "\n") {
    #if DEBUG
    if items.count > 1 {
        print(items, separator: separator, terminator: terminator)
    } else {
        print(items.first ?? "")
    }
    #endif
}
