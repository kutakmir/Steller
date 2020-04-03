//
//  LoadableViewProtocol.swift
//  Steller
//
//  Created by Miroslav Kutak on 02/04/2020.
//  Copyright © 2020 Curly Bracers. All rights reserved.
//

import Combine
import SwiftUI

protocol LoadableViewProtocol {
    associatedtype LoadableType

    var loadableModel: Loadable<LoadableType> { get }
    var modelUpdate: AnyPublisher<Loadable<LoadableType>, Never>? { get }

    var loadableContentView: AnyView { get }

    func notRequestedView() -> AnyView
    func loadingView(_ previouslyLoaded: LoadableType?) -> AnyView
    func failedView(_ error: Error) -> AnyView
    func loadedView(_ items: LoadableType, showSearch: Bool) -> AnyView

    func loadContent()
}

extension LoadableViewProtocol {

    var loadableContentView: AnyView {
        switch loadableModel {
        case .notRequested:
            return AnyView(notRequestedView())
        case let .isLoading(last, _):
            return AnyView(loadingView(last))
        case let .loaded(items):
            return AnyView(loadedView(items, showSearch: true))
        case let .failed(error):
            return AnyView(failedView(error))
        }
    }

    var modelUpdate: AnyPublisher<Loadable<[Story]>, Never>? {
        return nil
    }

    // MARK: - Default Views

    func notRequestedView() -> AnyView {
        Text("Not requested")
        .onAppear {
            self.loadContent()
        }
        .stretchedFrame()
    }

    func loadingView(_ previouslyLoaded: LoadableType?) -> AnyView {
        VStack {
            ActivityIndicator(isAnimating: true)
                .configure { (view: UIActivityIndicatorView) in
                    view.style = .large
                    view.color = UIColor(white: 0.8, alpha: 1.0)
            }
            Text("Loading...")
        }
        .stretchedFrame()
    }

    func failedView(_ error: Error) -> AnyView {
        ErrorView(error: error, retryAction: loadContent)
        .stretchedFrame()
    }

    func loadedView(_ items: LoadableType, showSearch: Bool) -> AnyView {
        Text("Loading successful")
            .stretchedFrame()
    }

}

extension View {
    func stretchedFrame() -> AnyView {
        AnyView(
            GeometryReader { geometry in
                self
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
        })
    }
}
