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

//struct UserStoriesGridView<T: StoryPresentable>: View, LoadableViewProtocol {
//
//    @State var displaysStoryPreview: Bool = false
//    @Environment(\.injected) private var injected: DependencyInjectionContainer
//
//    var body: some View {
//        loadableContentView
//    }
//
//    // MARK: - LoadableViewProtocol
//
//    typealias LoadableType = [Story]
//    @State var loadableModel: Loadable<[Story]> = .notRequested
//    @State var routingModel = [RouterComponent]()
//
//    func loadedView(_ items: [Story], showSearch: Bool) -> AnyView {
//        AnyView(
//            GeometryReader { geometry in
//                ScrollView {
//                    Grid(items) { item in
//                        Card(item: item).onTapGesture {
//
//                            self.injected.appState.value.router.navigate(to:
//                                RouterComponent(
//                                    id: "story/\(item.id)",
//                                    title: item.title,
//                                    userData: nil,
//                                    view: AnyView(self.storyPreview(story: item))
//                                )
//                            )
//                        }
//                    }
//                }
//                .gridStyle(
//                    ModularGridStyle(columns: .count(2), rows: .fixed(geometry.size.height/2))
//                )
//        })
//    }
//
//    func storyPreview(story: Story) -> some View {
//        StoryPreview(stories: self.loadableModel.value ?? [], selectedStory: 0, onDismiss: {
//            withAnimation {
//                self.injected.appState.value.router.dismiss()
//            }
//        }).inject(self.injected)
//    }
//
//    // MARK: - Actions
//    func loadContent() {
//        injected.interactors.storiesInteractor
//            .loadStories()
//    }
//}
//
//struct UserStoriesGridView_Previews: PreviewProvider {
//    static var previews: some View {
//        UserStoriesGridView<Story>().inject(AppEnvironment.bootstrap().container)
//    }
//}
//
