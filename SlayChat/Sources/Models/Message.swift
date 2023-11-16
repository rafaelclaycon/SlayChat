//
//  Message.swift
//  SlayChat
//
//  Created by Rafael Schmitt on 15/11/23.
//

import Foundation

struct Message: Identifiable {

    let id: String
    let sender: String
    let content: String
    let timestamp: Date

    init(
        id: String = UUID().uuidString,
        sender: String,
        content: String,
        timestamp: Date = .now
    ) {
        self.id = id
        self.sender = sender
        self.content = content
        self.timestamp = timestamp
    }
}
