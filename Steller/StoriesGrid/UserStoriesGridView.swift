//
//  UserStoriesGridView.swift
//  Steller
//
//  Created by Miroslav Kutak on 03/04/2020.
//  Copyright © 2020 Curly Bracers. All rights reserved.
//

import Combine
import Grid
import SwiftUI

struct UserStoriesGridView: View, LoadableViewProtocol {

    @Environment(\.injected) private var injected: DependencyInjectionContainer

    var body: some View {
        loadableContentView
        .onReceive(self.modelUpdate!) {
            self.loadableModel = $0
        }
    }

    // MARK: - LoadableViewProtocol

    typealias LoadableType = [Story]
    @State var loadableModel: Loadable<[Story]> = .notRequested

    func loadedView(_ items: [Story], showSearch: Bool) -> AnyView {
        AnyView(
            GeometryReader { geometry in
                ScrollView {
                    Grid(items) { item in
                        StoryCardView(item: item).onTapGesture {

                            let stories = self.loadableModel.value ?? []
                            let selectedStoryIndex = stories.firstIndex(of: item) ?? 0

                            self.injected.appState.value.router.navigate(to:
                                RouterComponent(
                                    id: "story/\(item.id)",
                                    title: item.title,
                                    userData: nil,
                                    view: AnyView(self.storyPreview(selectedStoryIndex: selectedStoryIndex))
                                )
                            )
                        }
                    }
                }
                .gridStyle(
                    ModularGridStyle(columns: .count(2), rows: .fixed(geometry.size.height/2))
                )
        })
    }

    func storyPreview(selectedStoryIndex: Int) -> some View {
        StoryPreview(selectedStoryIndex: selectedStoryIndex)
    }

    var modelUpdate: AnyPublisher<Loadable<[Story]>, Never>? {
        injected.appState.updates(for: \.userData.stories)
    }

    // MARK: - Actions
    func loadContent() {
        injected.interactors.storiesInteractor
            .loadStories()
    }
}

struct UserStoriesGridView_Previews: PreviewProvider {
    static var previews: some View {
        UserStoriesGridView().inject(AppEnvironment.bootstrap().container)
    }
}

