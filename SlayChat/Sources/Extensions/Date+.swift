//
//  Date+.swift
//  SlayChat
//
//  Created by Rafael Schmitt on 15/11/23.
//

import Foundation

extension Date {

    func asRelativeDateTime(unitsStyle: RelativeDateTimeFormatter.UnitsStyle = .short) -> String {
        let formatter = RelativeDateTimeFormatter()
        formatter.unitsStyle = unitsStyle
        return formatter.localizedString(for: self, relativeTo: Date.now)
    }

    init(from isoDate: String) {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS"
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        self = dateFormatter.date(from: isoDate)!
    }
}
