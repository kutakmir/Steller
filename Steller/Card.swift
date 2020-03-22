import SwiftUI
import URLImage

struct Card: View {
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
                Text(item.user.display_name).foregroundColor(.blue)
                Spacer()

                if item.likes.count > 0 {
                    HStack(alignment: .center, spacing: 8) {
                        Image(systemName: "suit.heart.fill")
                        Text("\(item.likes.count)")
                    }.foregroundColor(item.likes.current_user ? .blue : .gray)
                }
            }.padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 4))
        }
    }
}

#if DEBUG
struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(item: Story(id: "asdfadsf", title: "Hello", likes: Likes(count: 32, current_user: true), user: User(id: "asdf", display_name: "Henry"), cover_src: URL(string: "https://d2rbodpj0xodc.cloudfront.net/stories/1797860797901178606/16c50d2b-282f-462f-91fb-a7c504d7a9de.jpeg")!, cover_bg: "#ABB0B2"))
    }
}
#endif
