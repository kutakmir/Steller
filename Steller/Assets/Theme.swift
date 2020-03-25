//
//  Theme.swift
//  Steller
//
//  Created by Miroslav Kutak on 25/03/2020.
//  Copyright © 2020 Curly Bracers. All rights reserved.
//

import SwiftUI

extension Color {

    struct Main {
        static let primary = Color.white
        static let activeElement = Color.blue
    }

    struct TopBar {
        static let background = Color(white: 0.9)
        static let title = Color.black
    }

    struct Like {
        static let normal = Color.gray
        static let currentUser = Color.blue
    }

}


extension Image {

    struct Like {
        static let empty = Image(systemName: "suit.heart")
        static let filled = Image(systemName: "suit.heart.fill")
    }
}
