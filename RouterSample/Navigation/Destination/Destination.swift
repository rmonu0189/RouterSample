//
//  Destination.swift
//  RouterSample
//
//  Created by Monu Rathor on 03/01/25.
//

import SwiftUI

enum Destination: Identifiable {
    var id: String { "\(self)" }

    case welcome
    case login
    case register
    case homeList
    case itemDetails(id: String)
    case moreInfo
}

extension Destination: Hashable {
    static func == (lhs: Destination, rhs: Destination) -> Bool {
        lhs.id == rhs.id
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
