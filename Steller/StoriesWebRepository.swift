//
//  StoriesWebRepository.swift
//  Steller
//
//  Created by Miroslav Kutak on 28/03/2020.
//  Copyright © 2020 Curly Bracers. All rights reserved.
//

import Foundation
import Combine

protocol StoriesWebRepository: WebRepository {
    func loadStories(user: User) -> AnyPublisher<[Story], Error>
}

struct RealStoriesWebRepository: StoriesWebRepository {

    let session: URLSession
    let baseURL: String
    let bgQueue = DispatchQueue(label: "RealStoriesWebRepository.bgParseQueue")

    init(session: URLSession, baseURL: String) {
        self.session = session
        self.baseURL = baseURL
    }

    func loadStories(user: User) -> AnyPublisher<[Story], Error> {
        let request: AnyPublisher<FeedResponse, Error> = call(endpoint: API.userStories(user))
        return request
        .tryMap { $0.data }
        .eraseToAnyPublisher()
    }
}

// MARK: - Endpoints

extension RealStoriesWebRepository {
    enum API {
        case userStories(User)
    }
}

extension RealStoriesWebRepository.API: APICall {
    var path: String {
        switch self {
        case .userStories(let user):
            return "/users/\(user.id)/stories"
        }
    }
    var method: String {
        switch self {
        case .userStories:
            return "GET"
        }
    }
    var headers: [String: String]? {
        return ["Accept": "application/json"]
    }
    func body() throws -> Data? {
        return nil
    }
}
