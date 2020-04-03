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

struct ContentView: View, RoutableViewProtocol {

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
                UserStoriesGridView().inject(self.injected)
            }
            routableStack()
                .animation(.easeInOut)
        }
        .onReceive(routerUpdate!) { self.routingModel = $0 }
    }

    // MARK: - RoutableViewProtocol

    @State var routingModel = [RouterComponent]()

    var routerUpdate: AnyPublisher<[RouterComponent], Never>? {
        injected.appState.updates(for: \.router.components)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().inject(AppEnvironment.bootstrap().container)
    }
}
