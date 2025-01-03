//
//  WelcomeScreen.swift
//  RouterSample
//
//  Created by Monu Rathor on 03/01/25.
//

import SwiftUI

struct WelcomeScreen: View {
    @EnvironmentObject private var router: Router

    var body: some View {
        VStack(spacing: 20) {
            Button(action: { router.push(.login) }, label: {
                Text("Login")
            })

            Button(action: { router.push(.register) }, label: {
                Text("Register")
            })
        }
        .navigationTitle("Welcome")
    }
}

#Preview {
    NavigationStack {
        WelcomeScreen()
            .environmentObject(Router(root: .welcome))
    }
}
