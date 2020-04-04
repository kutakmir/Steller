//
//  DependencyInjectionContainer.swift
//  Steller
//
//  Created by Miroslav Kutak on 25/03/2020.
//  Copyright © 2020 Curly Bracers. All rights reserved.
//

import SwiftUI
import Combine

// MARK: - DependencyInjectionContainer

struct DependencyInjectionContainer: EnvironmentKey {
    
    let appState: Store<AppState>
    let interactors: Interactors
    let theme: Theme
    
    static var defaultValue: Self { Self.default }
    
    private static let `default` = Self(appState: Store(AppState()),
                                        interactors: Interactors.stub,
                                        theme: Theme.default)

    struct Interactors {
        let storiesInteractor: StoriesInteractor

        static var stub: Self {
            Self(storiesInteractor: StubStoriesInteractor())
        }
    }
}

extension EnvironmentValues {
    var injected: DependencyInjectionContainer {
        get { self[DependencyInjectionContainer.self] }
        set { self[DependencyInjectionContainer.self] = newValue }
    }
}

#if DEBUG
extension DependencyInjectionContainer {
    static var preview: Self {
        Self(appState: Store(AppState.preview), interactors: .stub, theme: Theme.default)
    }
}
#endif

// MARK: - Injection in the view hierarchy

extension View {
    
    func inject(_ container: DependencyInjectionContainer) -> some View {
        return self
            .environment(\.injected, container)
    }
}
