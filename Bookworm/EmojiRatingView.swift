//
//  EmojiRatingView.swift
//  Bookworm
//
//  Created by Martin Lienhard on 7/10/24.
//

import SwiftUI

struct EmojiRatingView: View {
    let rating: Int

    //Edit menu > Emoji & Symbols
    var body: some View {
        switch rating {
        case 1:
            Text("😞")
        case 2:
            Text("😒")
        case 3:
            Text("🫤")
        case 4:
            Text("🙂")
        default:
            Text("😁")
        }
    }
}

#Preview {
    EmojiRatingView(rating: 3)
}
