//
//  RoutingView.swift
//  RouterSample
//
//  Created by Monu Rathor on 03/01/25.
//

import SwiftUI

struct RoutingView: View {
    @ObservedObject private var router: Router

    init(router: Router) {
        self.router = router
    }

    var body: some View {
        NavigationStack(path: $router.path) {
            router.root.screen
                .navigationDestination(
                    for: Destination.self
                ) { destination in
                    destination.screen
                }
        }
        .environmentObject(router)
        .sheet(item: $router.sheet) { destination in
            destination.screen
                .environmentObject(router)
        }
        .fullScreenCover(
            item: $router.fullScreenCover
        ) { destination in
            destination.screen
                .environmentObject(router)
        }
    }
}

#Preview {
    RoutingView(router: Router(root: .welcome))
}
