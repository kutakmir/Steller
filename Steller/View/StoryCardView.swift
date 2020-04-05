//
//  StoryCardView.swift
//  Steller
//
//  Created by Miroslav Kutak on 22/03/2020.
//  Copyright © 2020 Curly Bracers. All rights reserved.
//

import SwiftUI
import URLImage

struct StoryCardView: View {
    let item: Story
    
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            ZStack(alignment: .init(horizontal: .center, vertical: .center)) {
                URLImage(item.cover_src, placeholder: { _ in
                    Color(hex: self.item.cover_bg, alpha: 1.0)
                }) {
                    $0.image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipped()
                }
            }
            .cornerRadius(8)
            HStack(alignment: .center, spacing: 0) {
                Text(item.user.display_name).foregroundColor(Color.Main.activeElement).onTapGesture {
                    Log("User profile selected! \(self.item.user.display_name)")
                }
                Spacer()

                if item.likes.count > 0 {
                    HStack(alignment: .center, spacing: 8) {
                        Image.Like.filled.onTapGesture {
                            Log("Like! \(self.item.title)")
                        }
                        Text("\(item.likes.count)").onTapGesture {
                            Log("Display the list of people who liked this story...")
                        }
                    }.foregroundColor(item.likes.current_user ? Color.Like.currentUser : Color.Like.normal)
                }
            }.padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 4))
        }
    }
}

#if DEBUG
struct Card_Previews: PreviewProvider {
    static var previews: some View {
        StoryPreviewPage(item: Story(id: "asdfadsf", title: "Hello", likes: Likes(count: 32, current_user: true), user: User(id: "asdf", display_name: "Henry", avatar_image_url: nil), cover_src: URL(string: "https://d2rbodpj0xodc.cloudfront.net/stories/1797860797901178606/16c50d2b-282f-462f-91fb-a7c504d7a9de.jpeg")!, cover_bg: "#ABB0B2", snippet: Snippet(text: "asdflk asldkfj alskdfj as0d9f uas9df a0s9d asdf")))
    }
}
#endif
