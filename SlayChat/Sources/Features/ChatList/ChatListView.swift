//
//  ChatListView.swift
//  SlayChat
//
//  Created by Rafael Schmitt on 15/11/23.
//

import SwiftUI

struct ChatListView: View {

    @State private var chats: [Chat] = [
        .init(sender: "rafaelschmitt", recipient: "nilay", messages: [.init(content: "Hey man")]),
        .init(sender: "rafaelschmitt", recipient: "davidpierce", messages: [.init(content: "What you up to?")])
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
                ForEach(chats) {
                    ChatPreview(chat: $0)
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
