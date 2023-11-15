//
//  Message.swift
//  SlayChat
//
//  Created by Rafael Schmitt on 15/11/23.
//

import Foundation

struct Message: Identifiable {

    let id: String
    let content: String
    let timestamp: Date

    init(
        id: String = UUID().uuidString,
        content: String,
        timestamp: Date = .now
    ) {
        self.id = id
        self.content = content
        self.timestamp = timestamp
    }
}
