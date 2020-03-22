import SwiftUI

struct Card: View {
    let item: Story
    
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            ZStack(alignment: .init(horizontal: .center, vertical: .center)) {
                Rectangle()
                    .foregroundColor(item.color)
                Text("\(item.number)")
                    .font(.title)
                    .foregroundColor(.white)
                    .opacity(0.5)
            }
            .cornerRadius(8)
            HStack(alignment: .center, spacing: 0) {
                Text(item.authorName).foregroundColor(.blue)
                Spacer()

                if item.likesCount > 0 {
                    HStack(alignment: .center, spacing: 8) {
                        Image(systemName: "suit.heart.fill")
                        Text("\(item.likesCount)")
                    }.foregroundColor(item.likedByCurrentUser ? .blue : .gray)
                }
            }.padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 4))
        }
    }
}

#if DEBUG
struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(item: Story(number: 3))
    }
}
#endif
