//
//  Chat.swift
//  SlayChat
//
//  Created by Rafael Schmitt on 15/11/23.
//

import Foundation

struct Chat: Identifiable {

    let id: String
    let sender: String
    let recipient: String
    let messages: [Message]

    init(
        id: String = UUID().uuidString,
        sender: String,
        recipient: String,
        messages: [Message] = []
    ) {
        self.id = id
        self.sender = sender
        self.recipient = recipient
        self.messages = messages
    }
}
