//
//  StoryPreview.swift
//  Steller
//
//  Created by Miroslav Kutak on 25/03/2020.
//  Copyright © 2020 Curly Bracers. All rights reserved.
//

import SwiftUI

struct StoryPreview: View {

    @Environment(\.injected) var container: DependencyInjectionContainer

    var stories: [Story]
    @State var selectedStoryIndex: Int
    let onDismiss: () -> Void

    var body: some View {

        StoryPreviewPage(item: self.stories[selectedStoryIndex]).gesture(
            DragGesture(minimumDistance: 20).onEnded({ (value: DragGesture.Value) in

                withAnimation {
                    if value.location.x < value.startLocation.x - 20 {
                        self.selectedStoryIndex = (self.selectedStoryIndex + 1) % self.stories.count
                        return
                    }
                    if value.location.x > value.startLocation.x + 20 {
                        self.selectedStoryIndex = (self.selectedStoryIndex + self.stories.count - 1) % self.stories.count
                        return
                    }
                    if value.location.y > value.startLocation.y + 30 {
                        self.onDismiss()
                    }
                }
            })
        )
    }

}
