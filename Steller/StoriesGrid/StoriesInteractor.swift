//
//  StoriesInteractor.swift
//  Steller
//
//  Created by Miroslav Kutak on 28/03/2020.
//  Copyright © 2020 Curly Bracers. All rights reserved.
//

import Combine
import Foundation
import SwiftUI

protocol StoriesInteractor {
    func loadStories()
    func load(stories: Binding<Loadable<[Story]>>, ofUser user: User)
}

struct RealStoriesInteractor: StoriesInteractor {

    let webRepository: StoriesWebRepository
    let appState: Store<AppState>

    init(webRepository: StoriesWebRepository, appState: Store<AppState>) {
        self.webRepository = webRepository
        self.appState = appState
    }

    func load(stories: Binding<Loadable<[Story]>>, ofUser user: User) {
        let cancelBag = CancelBag()

        stories.wrappedValue = .isLoading(last: stories.wrappedValue.value, cancelBag: cancelBag)

        webRepository.loadStories(user: user)
            .receive(on: DispatchQueue.main)
            .sinkToLoadable { stories.wrappedValue = $0 }
            .store(in: cancelBag)
    }


    func loadStories() {
        let stories = appState.value.userData.stories.value
        let cancelBag = CancelBag()
        appState[\.userData.stories] = .isLoading(last: stories, cancelBag: cancelBag)
        weak var weakAppState = appState
        webRepository.loadStories(user: User.mockedItem)
            .sinkToLoadable { weakAppState?[\.userData.stories] = $0 }
            .store(in: cancelBag)
    }
}

struct StubStoriesInteractor: StoriesInteractor {

    func load(stories: Binding<Loadable<[Story]>>, ofUser user: User) {
    }
    func loadStories() {
    }
}

