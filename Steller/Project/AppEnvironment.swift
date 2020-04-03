//
//  AppEnvironment.swift
//  Steller
//
//  Created by Miroslav Kutak on 29/03/2020.
//  Copyright © 2020 Curly Bracers. All rights reserved.
//

import UIKit
import Combine

struct AppEnvironment {
    let container: DependencyInjectionContainer
}

extension AppEnvironment {

    static func bootstrap() -> AppEnvironment {
        let appState = Store<AppState>(AppState())
        let session = configuredURLSession()
        let webRepositories = configuredWebRepositories(session: session)
        let interactors = configuredInteractors(appState: appState, webRepositories: webRepositories)
        let diContainer = DependencyInjectionContainer(appState: appState, interactors: interactors)
        return AppEnvironment(container: diContainer)
    }

    private static func configuredURLSession() -> URLSession {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForRequest = 60
        configuration.timeoutIntervalForResource = 120
        configuration.waitsForConnectivity = true
        configuration.httpMaximumConnectionsPerHost = 5
        configuration.requestCachePolicy = .returnCacheDataElseLoad
        return URLSession(configuration: configuration)
    }

    private static func configuredWebRepositories(session: URLSession) -> WebRepositoriesContainer {
        let storiesRepository = RealStoriesWebRepository(
            session: session,
            baseURL: "https://api.steller.co/v1")
        return WebRepositoriesContainer(storiesRepository: storiesRepository)
    }

    private static func configuredInteractors(appState: Store<AppState>,
                                              webRepositories: WebRepositoriesContainer
    ) -> DependencyInjectionContainer.Interactors {
        let storiesInteractor = RealStoriesInteractor(
            webRepository: webRepositories.storiesRepository,
            appState: appState)
        return DependencyInjectionContainer.Interactors(storiesInteractor: storiesInteractor)
    }
}

private extension AppEnvironment {
    struct WebRepositoriesContainer {
        let storiesRepository: StoriesWebRepository
    }
}
