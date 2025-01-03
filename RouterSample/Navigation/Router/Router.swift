//
//  Router.swift
//  RouterSample
//
//  Created by Monu Rathor on 03/01/25.
//

import Foundation
import SwiftUI

class Router: ObservableObject {
    @Published var root: Destination
    @Published var path: [Destination] = []
    @Published var sheet: Destination?
    @Published var fullScreenCover: Destination?

    init(root: Destination) {
        self.root = root
    }

    func switchRoot(_ root: Destination, animation: Bool = true) {
        perform(animation: animation) {
            path.removeAll()
            self.root = root
        }
    }

    func push(_ destination: Destination, animation: Bool = true) {
        perform(animation: animation) {
            path.append(destination)
        }
    }

    func pop(animation: Bool = true) {
        perform(animation: animation) {
            path.removeLast()
        }
    }

    func popTo(_ destination: Destination, animation: Bool = true) {
        guard let index = path.lastIndex(where: { $0 == destination }) else { return }
        perform(animation: animation) {
            path.popItem(to: index)
        }
    }

    func popToRoot(animation: Bool = true) {
        perform(animation: animation) {
            path.removeAll()
        }
    }

    func sheet(_ destination: Destination, animation: Bool = true) {
        perform(animation: animation) {
            sheet = destination
        }
    }

    func fullScreenCover(_ destination: Destination, animation: Bool = true) {
        perform(animation: animation) {
            fullScreenCover = destination
        }
    }

    func dismiss(animation: Bool = true) {
        perform(animation: animation) {
            if sheet != nil {
                sheet = nil
            } else if fullScreenCover != nil {
                fullScreenCover = nil
            }
        }
    }

    private func perform(animation: Bool, block: () -> Void) {
        if !animation {
            var transaction = Transaction()
            transaction.disablesAnimations = true
            withTransaction(transaction) {
                block()
            }
        } else {
            block()
        }
    }
}

extension Array {
    mutating func popItem(to index: Int) {
        guard index < self.count && index >= 0 else {
            return
        }
        self = Array(self[..<Swift.min(index + 1, self.count)])
    }
}
