//
//  ContentView.swift
//  Steller
//
//  Created by Miroslav Kutak on 22/03/2020.
//  Copyright © 2020 Curly Bracers. All rights reserved.
//

import Combine
import Grid
import SwiftUI

struct ContentView<T: StoryPresentable>: View, LoadableViewProtocol {

    @State var displaysStoryPreview: Bool = false
    @Environment(\.injected) private var injected: DependencyInjectionContainer

    var body: some View {
        
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            VStack {
                ZStack {
                    Color.TopBar.background
                        .frame(width: nil, height: 44, alignment: .center)
                    Text(Localize("global.title"))
                        .foregroundColor(Color.TopBar.title)
                }
                loadableContentView
            }
            routableStack()
                .animation(.easeInOut)
        }
        .onReceive(modelUpdate!) { self.loadableModel = $0 }
        .onReceive(routerUpdate!) { self.routingModel = $0 }
    }

    // MARK: - LoadableViewProtocol

    var modelUpdate: AnyPublisher<Loadable<[Story]>, Never>? {
        injected.appState.updates(for: \.userData.stories)
    }

    var routerUpdate: AnyPublisher<[RouterComponent], Never>? {
        injected.appState.updates(for: \.router.components)
    }

    typealias LoadableType = [Story]
    @State var loadableModel: Loadable<[Story]> = .notRequested
    @State var routingModel = [RouterComponent]()

    func loadedView(_ items: [Story], showSearch: Bool) -> AnyView {
        AnyView(
            GeometryReader { geometry in
                ScrollView {
                    Grid(items) { item in
                        Card(item: item).onTapGesture {

                            self.injected.appState.value.router.navigate(to:
                                RouterComponent(
                                    id: "story/\(item.id)",
                                    title: item.title,
                                    userData: nil,
                                    view: AnyView(self.storyPreview(story: item))
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

    func storyPreview(story: Story) -> some View {
        StoryPreview(stories: self.loadableModel.value ?? [], selectedStory: 0, onDismiss: {
            withAnimation {
                self.injected.appState.value.router.dismiss()
            }
        }).inject(self.injected)
    }

    // MARK: - Actions
    func loadContent() {
        injected.interactors.storiesInteractor
            .loadStories()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView<Story>().inject(AppEnvironment.bootstrap().container)
    }
}
