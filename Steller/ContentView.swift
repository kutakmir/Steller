//
//  ContentView.swift
//  Steller
//
//  Created by Miroslav Kutak on 22/03/2020.
//  Copyright © 2020 Miroslav Kutak. All rights reserved.
//

import SwiftUI
import Grid

struct ContentView: View {

    var viewModel: [String]?
    @State var stories: [Story] = (0...100).map { Story(number: $0) }

    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            VStack {
                ZStack {
                    Color(white: 0.9).frame(width: nil, height: 44, alignment: .center)
                    Text("STELLER").foregroundColor(.black)
                }
                GeometryReader { geometry in
                    ScrollView {
                        Grid(self.stories) { item in
                            Card(item: item).onTapGesture {
                                print("tapped: \(item)")
                            }
                        }
                    }
                    .gridStyle(
                        ModularGridStyle(columns: .count(2), rows: .fixed(geometry.size.height/2))
                    )
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Color {
    private static let all: [Color] = [.red, .green, .blue, .orange, .yellow, .pink, .purple]

    static var random: Color {
        all.randomElement()!
    }
}

struct Story: Identifiable {
    let number: Int
    let id: UUID = UUID()
    let likesCount: Int = .random(in: 0..<99)
    let color: Color = .random
    let likedByCurrentUser: Bool = .random()
    let authorName: String = ["Benjamin", "Jack", "William", "Margareth", "Jane", "Adele"].randomElement()!
}
