//
//  StoryPreview.swift
//  Steller
//
//  Created by Miroslav Kutak on 25/03/2020.
//  Copyright © 2020 Curly Bracers. All rights reserved.
//

import SwiftUI

struct StoryPreview<T: StoryPresentable>: View {

    @Environment(\.injected) var container: DependencyInjectionContainer
    
    @State var stories: [T]
    @State var selectedStory: Int

    let onDismiss: () -> Void

    var body: some View {

        StoryPreviewPage(item: self.stories[selectedStory]).gesture(
            DragGesture(minimumDistance: 20).onEnded({ (value: DragGesture.Value) in

                withAnimation {
                    if value.location.x < value.startLocation.x - 20 {
                        self.selectedStory = (self.selectedStory + 1) % self.stories.count
                        return
                    }
                    if value.location.x > value.startLocation.x + 20 {
                        self.selectedStory = (self.selectedStory + self.stories.count - 1) % self.stories.count
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
