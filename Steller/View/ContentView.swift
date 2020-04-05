//
//  ContentView.swift
//  Steller
//
//  Created by Miroslav Kutak on 22/03/2020.
//  Copyright © 2020 Curly Bracers. All rights reserved.
//

import SwiftUI
import Grid

struct ContentView: View {

    @ObservedObject var viewModel = FeedViewModel()
    @State var displaysStoryPreview: Bool = false

    var body: some View {
        
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            VStack {
                ZStack {
                    Color.TopBar.background.frame(width: nil, height: 44, alignment: .center)
                    Text(Localize("global.title")).foregroundColor(Color.TopBar.title)
                }
                GeometryReader { geometry in
                    ScrollView {
                        Grid(self.viewModel.stories) { item in
                            StoryCardView(item: item).onTapGesture {
                                withAnimation {
                                    self.displaysStoryPreview = true
                                }
                            }
                        }
                    }
                    .gridStyle(
                        ModularGridStyle(columns: .count(2), rows: .fixed(geometry.size.height/2))
                    )
                }
            }
            if self.displaysStoryPreview {
                StoryPreview(stories: self.viewModel.stories, selectedStory: 0, onDismiss: {
                    withAnimation {
                        self.displaysStoryPreview = false
                    }
                })
            }
        }.onAppear(perform: viewModel.loadData)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
