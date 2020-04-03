//
//  StoryPreviewPage.swift
//  Steller
//
//  Created by Miroslav Kutak on 26/03/2020.
//  Copyright © 2020 Curly Bracers. All rights reserved.
//

import SwiftUI
import URLImage

struct StoryPreviewPage<T: StoryPresentable>: View {
    let item: T

    var body: some View {

        GeometryReader { geometry in
            ZStack(alignment: .top) {
                Color.white
                    .edgesIgnoringSafeArea(.all)
                URLImage(self.item.cover_src, placeholder: { _ in
                    Color(hex: self.item.cover_bg, alpha: 1.0)
                }) {
                    $0.image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipped()
                }.frame(width: geometry.size.width, height: geometry.size.height, alignment: .leading).edgesIgnoringSafeArea(.all)
                Triangle()
                    .frame(width: geometry.size.width, height: geometry.size.height / 3.0).offset(x: 0, y: geometry.size.height / 2.0)
                    .foregroundColor(.white)
                Rectangle()
                    .frame(width: geometry.size.width, height: geometry.size.height / 3.0).offset(x: 0, y: geometry.size.height / 2.0 + geometry.size.height / 3.0)
                    .foregroundColor(.white)
                VStack(alignment: .leading) {
                    Text(self.item.title).font(.system(size: 50)).frame(width: geometry.size.width / 1.5, height: nil, alignment: .leading)
                    Text(self.item.snippet.text)
                }.offset(x: 0, y: geometry.size.height / 1.5).foregroundColor(.blue)
            }
        }
    }
}

#if DEBUG
struct StoryPreviewPage_Previews: PreviewProvider {
    static var previews: some View {
        StoryPreviewPage(item: Story(id: "asdfadsf", title: "Hello", likes: Likes(count: 32, current_user: true), user: User(id: "asdf", display_name: "Henry", avatar_image_url: nil), cover_src: URL(string: "https://d2rbodpj0xodc.cloudfront.net/stories/1797860797901178606/16c50d2b-282f-462f-91fb-a7c504d7a9de.jpeg")!, cover_bg: "#ABB0B2", snippet: Snippet(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")))
    }
}
#endif

