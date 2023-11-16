//
//  ChatView.swift
//  SlayChat
//
//  Created by Rafael Schmitt on 15/11/23.
//

import SwiftUI

struct ChatView: View {

    let chat: Chat

    @State private var newMessage: String = ""

    var body: some View {
        VStack {
            GeometryReader { reader in
                ScrollView {
                    VStack {
                        Spacer()

                        ForEach(chat.messages) { message in
                            if message.sender == chat.sender {
                                HStack {
                                    Spacer()

                                    ChatBubble(content: message.content, isFromCurrentUser: true)
                                }
                                .padding()
                            } else {
                                HStack {
                                    ChatBubble(content: message.content, isFromCurrentUser: false)

                                    Spacer()
                                }
                                .padding()
                            }
                        }
                    }
                    .frame(minHeight: reader.size.height)
                }
            }
        }
        .navigationTitle(chat.recipient)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar(.hidden, for: .tabBar)
        .safeAreaInset(edge: .bottom) {
            VStack(spacing: .zero) {
                Divider()

                HStack(spacing: 10) {
                    TextField("Message", text: $newMessage)
                        .textFieldStyle(.roundedBorder)

                    Button {
                        print("")
                    } label: {
                        Image(systemName: "paperplane.circle.fill")
                            .font(.system(size: 28))
                            .background {
                                Circle()
                                    .fill(Color.white)
                                    .frame(width: 20)
                            }
                    }
                }
                .padding(.horizontal)
                .padding(.vertical, 10)
            }
        }
    }
}

#Preview {
    NavigationStack {
        ChatView(
            chat: .init(
                sender: "trixie",
                recipient: "katya",
                messages: [
                    .init(sender: "katya", content: "Hey hoe")
                ]
            )
        )
    }
}
