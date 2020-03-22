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
    @State var stories = [Story]()

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
        }.onAppear(perform: loadData)
    }

    func loadData() {
        guard let url = URL(string: "https://api.steller.co/v1/users/76794126980351029/stories") else {
            return
        }
        let request = URLRequest(url: url)

        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode(FeedResponse.self, from: data) {
                    // we have good data – go back to the main thread
                    DispatchQueue.main.async {
                        // update our UI
                        self.stories = decodedResponse.data
                    }
                }
            }
        }.resume()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
