//
//  Router.swift
//  Steller
//
//  Created by Miroslav Kutak on 03/04/2020.
//  Copyright © 2020 Curly Bracers. All rights reserved.
//

import SwiftUI

struct RouterComponent: Equatable, Identifiable {
    let id: String
    let title: String
    let userData: [String: Any]?
    let view: AnyView
    
    // MARK: - Equatable
    static func == (lhs: RouterComponent, rhs: RouterComponent) -> Bool {
        return lhs.id == rhs.id
    }
}

struct Router {
    public private(set) var components = [RouterComponent]()

    mutating func navigate(to pathComponent: RouterComponent) {
        components.append(pathComponent)
        Log(path)
    }

    mutating func dismiss() {
        components.removeLast()
        Log(path)
    }

    var path: String {
        return components.map { $0.id }.joined(separator: "/")
    }
}
