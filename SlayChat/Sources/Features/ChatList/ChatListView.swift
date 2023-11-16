//
//  ChatListView.swift
//  SlayChat
//
//  Created by Rafael Schmitt on 15/11/23.
//

import SwiftUI

struct ChatListView: View {

    @State private var chats: [Chat] = [
        .init(sender: "trixie", recipient: "katya"),
        .init(sender: "katya", recipient: "trixie")
    ]
    @State private var showStartChatView: Bool = false

    var body: some View {
        if chats.isEmpty {
            ContentUnavailableView(
                "No Chats",
                systemImage: "message",
                description: Text("Start a new chat by tapping the plus sign at the top.")
            )
            .navigationTitle("Chats")
            .toolbar {
                Button {
                    showStartChatView.toggle()
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .font(.system(size: 24))
                }
            }
        } else {
            ScrollView {
                ForEach(chats) { chat in
                    NavigationLink {
                        ChatView(chat: chat)
                    } label: {
                        ChatPreview(chat: chat)
                    }
                    .foregroundStyle(.primary)

                    Divider()
                }
            }
            .navigationTitle("Chats")
            .toolbar {
                Button {
                    showStartChatView.toggle()
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .font(.system(size: 24))
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        ChatListView()
    }
}
