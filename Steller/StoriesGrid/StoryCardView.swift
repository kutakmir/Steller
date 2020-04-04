//
//  StoryCardView.swift
//  Steller
//
//  Created by Miroslav Kutak on 22/03/2020.
//  Copyright © 2020 Curly Bracers. All rights reserved.
//

import SwiftUI
import URLImage

struct StoryCardView<T: StoryPresentable>: View {
    let item: T

    @Environment(\.injected) private var injected: DependencyInjectionContainer
    
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            ZStack(alignment: Alignment(horizontal: .center, vertical: .center)) {
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
                Text(item.user.display_name).foregroundColor(injected.theme.colors.main.activeElement).onTapGesture {
                    Log("User profile selected! \(self.item.user.display_name)")
                }
                Spacer()

                if item.likes.count > 0 {
                    HStack(alignment: .center, spacing: 8) {
                        injected.theme.images.like.filled.onTapGesture {
                            Log("Like! \(self.item.title)")
                        }
                        Text("\(item.likes.count)").onTapGesture {
                            Log("Display the list of people who liked this story...")
                        }
                    }.foregroundColor(item.likes.current_user ? injected.theme.colors.like.currentUser : injected.theme.colors.like.normal)
                }
            }.padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 4))
        }
    }
}

#if DEBUG
struct StoryCardView_Previews: PreviewProvider {
    static var previews: some View {
        StoryCardView(item: Story.mockedItem)
    }
}
#endif
