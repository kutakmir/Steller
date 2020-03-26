//
//  AppState.swift
//  Steller
//
//  Created by Miroslav Kutak on 25/03/2020.
//  Copyright © 2020 Curly Bracers. All rights reserved.
//

import SwiftUI
import Combine

class Store<T: Equatable>: ObservableObject {

    let objectWillChange = PassthroughSubject<T, Never>()
    let objectDidChange = PassthroughSubject<(), Never>()

    var state: T {
        willSet {
            guard newValue != state else { return }
            assert(Thread.isMainThread, "State updates must be made from the main thread.")
            objectWillChange.send(newValue)
        }
        didSet {
            guard oldValue != state else { return }
            objectDidChange.send(())
        }
    }

    init(state: T) {
        self.state = state
    }
}

struct AppState: Equatable {

    let id: String

}
