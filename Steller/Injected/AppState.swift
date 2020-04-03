//
//  AppState.swift
//  Steller
//
//  Created by Miroslav Kutak on 25/03/2020.
//  Copyright © 2020 Curly Bracers. All rights reserved.
//

import SwiftUI
import Combine

struct AppState {

    var userData = UserData()
    var router = Router()

    struct UserData: Equatable {
        var stories: Loadable<[Story]> = .notRequested
    }
}


#if DEBUG
extension AppState {
    static var preview: AppState {
        var state = AppState()
        state.userData.stories = .loaded(Story.mockedItems)
        return state
    }
}
#endif
