//
//  ChatBubble.swift
//  SlayChat
//
//  Created by Rafael Schmitt on 16/11/23.
//

import SwiftUI

struct ChatBubble: View {

    let content: String
    let isFromCurrentUser: Bool

    var body: some View {
        Text(content)
            .padding(.vertical, 10)
            .padding(.horizontal, 16)
            .background {
                RoundedRectangle(cornerRadius: 20)
                    .fill(isFromCurrentUser ? .blue : .gray)
                    .opacity(isFromCurrentUser ? 1.0 : 0.5)
            }
    }
}

#Preview {
    ChatBubble(
        content: "What's up queen?",
        isFromCurrentUser: false
    )
}
