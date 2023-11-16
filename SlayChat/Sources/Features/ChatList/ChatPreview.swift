//
//  ChatPreview.swift
//  SlayChat
//
//  Created by Rafael Schmitt on 15/11/23.
//

import SwiftUI

struct ChatPreview: View {

    let chat: Chat

    var lastMessage: Message? {
        chat.messages.last
    }

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text(chat.recipient)
                    .font(.headline)

                Text(lastMessage?.content ?? "")
                    .foregroundStyle(.gray)
            }

            Spacer()
        }
        .overlay(alignment: .topTrailing) {
            HStack {
                Text(lastMessage?.timestamp.asRelativeDateTime() ?? "")
                    .foregroundStyle(.gray)

                Image(systemName: "chevron.right")
                    .foregroundStyle(.gray)
            }
        }
        .padding(.all, 20)
    }
}

#Preview {
    ChatPreview(
        chat: .init(
            sender: "rafaelschmitt",
            recipient: "nilay",
            messages: [
                .init(
                    sender: "nilay",
                    content: "What up man",
                    timestamp: .init(from: "2023-11-15T20:36:27.074")
                )
            ]
        )
    )
}
