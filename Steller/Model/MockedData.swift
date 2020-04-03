//
//  MockedData.swift
//  Steller
//
//  Created by Miroslav Kutak on 29/03/2020.
//  Copyright © 2020 Curly Bracers. All rights reserved.
//

import Foundation

#if DEBUG

extension Story {
    static let mockedItem: Story = Story(id: "asdfadsf",
                                         title: "Hello",
                                         likes: Likes.mockedItem,
                                         user: User.mockedItem,
                                         cover_src: URL(string: "https://d2rbodpj0xodc.cloudfront.net/stories/1797860797901178606/16c50d2b-282f-462f-91fb-a7c504d7a9de.jpeg")!,
                                         cover_bg: "#ABB0B2",
                                         snippet: Snippet.mockedItem)

    static let mockedItems: [Story] = [
        Story.mockedItem
    ]
}

extension Likes {
    static let mockedItem: Likes = Likes(count: 32, current_user: true)
}

extension User {
    static let mockedItem: User = User(id: "76794126980351029", display_name: "Richard McAniff", avatar_image_url: URL(string: "https://d2rbodpj0xodc.cloudfront.net/users/76794126980351029/avatar/77154bf1-8645-444a-9d6c-c43c8d14363a.jpeg")!)
}

extension Snippet {
    static let mockedItem: Snippet = Snippet(text: "asdflk asldkfj alskdfj as0d9f uas9df a0s9d asdf")
}

#endif

