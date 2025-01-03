//
//  RouterSampleApp.swift
//  RouterSample
//
//  Created by Monu Rathor on 03/01/25.
//

import SwiftUI

@main
struct RouterSampleApp: App {
    var body: some Scene {
        WindowGroup {
            RoutingView(router: Router(root: .welcome))
        }
    }
}
