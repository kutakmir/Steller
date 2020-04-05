//
//  FeedViewModel.swift
//  Steller
//
//  Created by Miroslav Kutak on 22/03/2020.
//  Copyright © 2020 Curly Bracers. All rights reserved.
//

import Foundation

class FeedViewModel: ObservableObject {

    @Published private(set) var stories = [Story]()

    func loadData() {
        guard let url = URL(string: "https://api.steller.co/v1/users/76794126980351029/stories") else {
            return
        }
        let request = URLRequest(url: url)

        URLSession.shared.dataTask(with: request) { [weak self] data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode(FeedResponse.self, from: data) {
                    // we have good data – go back to the main thread
                    DispatchQueue.main.async {
                        // update our UI
                        self?.stories = decodedResponse.data
                    }
                }
            }
        }.resume()
    }
}
