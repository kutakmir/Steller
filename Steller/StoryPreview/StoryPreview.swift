//
//  StoryPreview.swift
//  Steller
//
//  Created by Miroslav Kutak on 25/03/2020.
//  Copyright © 2020 Curly Bracers. All rights reserved.
//

import SwiftUI

struct StoryPreview: View, LoadableViewProtocol {

    @Environment(\.injected) var injected: DependencyInjectionContainer

    @State var selectedStoryIndex: Int

    var body: some View {
        loadableContentView
    }

    // MARK: - LoadableViewProtocol
    typealias LoadableType = [Story]
    var loadableModel: Loadable<[Story]> {
        return injected.appState.value.userData.stories
    }

    func loadedView(_ items: [Story], showSearch: Bool) -> AnyView {
        AnyView(
            StoryPreviewPage(item: items[selectedStoryIndex]).gesture(
                DragGesture(minimumDistance: 20).onEnded({ (value: DragGesture.Value) in

                    withAnimation {
                        if value.location.x < value.startLocation.x - 20 {
                            // Swipe right
                            self.selectedStoryIndex = (self.selectedStoryIndex + 1) % items.count
                            return
                        }
                        if value.location.x > value.startLocation.x + 20 {
                            // Swipe left
                            self.selectedStoryIndex = (self.selectedStoryIndex + items.count - 1) % items.count
                            return
                        }
                        if value.location.y > value.startLocation.y + 30 {
                            // Swipe down
                            withAnimation {
                                self.injected.appState.value.router.dismiss()
                            }
                        }
                    }
                })
            )
        )
    }

    func loadContent() {
        // Do nothing, the content has been loaded at this point
    }
}
