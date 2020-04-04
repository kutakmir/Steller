//
//  Theme.swift
//  Steller
//
//  Created by Miroslav Kutak on 25/03/2020.
//  Copyright © 2020 Curly Bracers. All rights reserved.
//

import SwiftUI

struct Theme {
    let colors: Colors
    let images: Images

    struct Colors {
        let main: Main
        let topBar: Bar
        let like: Action

        struct Main {
            let primary: Color
            let activeElement: Color
        }

        struct Bar {
            let title: Color
            let background: Color
        }

        struct Action {
            let normal: Color
            let currentUser: Color
        }
    }


    struct Images {
        let like: Action

        struct Action {
            let empty: Image
            let filled: Image
        }
    }

    static let `default`: Self = {

        let colors = Theme.Colors(main: Theme.Colors.Main(primary: .white, activeElement: .black),
                                  topBar: Theme.Colors.Bar(title: .black, background: Color(white: 0.9)),
                                  like: Theme.Colors.Action(normal: .gray, currentUser: .blue))

        let images = Theme.Images(like: Theme.Images.Action(empty: Image(systemName: "suit.heart"),
                                                            filled: Image(systemName: "suit.heart.fill")))

        return Theme(colors: colors,
                     images: images)
    }()
}
