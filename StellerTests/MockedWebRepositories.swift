//
//  MockedWebRepositories.swift
//  StellerTests
//
//  Created by Miroslav Kutak on 03/04/2020.
//  Copyright © 2020 Curly Bracers. All rights reserved.
//

import XCTest
import Combine
@testable import Steller

class TestWebRepository: WebRepository {
    let session: URLSession = .mockedResponsesOnly
    let baseURL = "https://test.com"
    let bgQueue = DispatchQueue(label: "test")
}

// MARK: - StoriesWebRepository

final class MockedStoriesWebRepository: TestWebRepository, Mock, StoriesWebRepository {

    enum Action: Equatable {
        case loadStories
    }
    var actions = MockActions<Action>(expected: [])

    var stotriesResponse: Result<[Story], Error> = .failure(MockError.valueNotSet)

    func loadStories(user: User) -> AnyPublisher<[Story], Error> {
        register(.loadStories)
        return stotriesResponse.publish()
    }
    func loadStories() -> AnyPublisher<[Story], Error> {
        register(.loadStories)
        return stotriesResponse.publish()
    }
}
