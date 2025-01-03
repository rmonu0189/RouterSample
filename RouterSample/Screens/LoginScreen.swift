//
//  LoginScreen.swift
//  RouterSample
//
//  Created by Monu Rathor on 03/01/25.
//

import SwiftUI

struct LoginScreen: View {
    @EnvironmentObject private var router: Router

    var body: some View {
        VStack {
            Button(action: { router.switchRoot(.homeList, animation: false) }, label: {
                Text("Show Home")
            })
        }
        .navigationTitle("Login")
    }
}

#Preview {
    LoginScreen()
}
