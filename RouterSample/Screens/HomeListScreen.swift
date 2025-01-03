//
//  HomeListScreen.swift
//  RouterSample
//
//  Created by Monu Rathor on 03/01/25.
//

import SwiftUI

struct HomeListScreen: View {
    @EnvironmentObject private var router: Router

    var body: some View {
        VStack {
            Text("Home List Screen")
            Button(action: { router.switchRoot(.welcome, animation: false) }, label: {
                Text("Logout")
            })
            Button(action: { router.push(.itemDetails(id: "11")) }, label: {
                Text("Show Details For ID: 11")
            })
        }
        .navigationTitle("Home List")
    }
}

#Preview {
    HomeListScreen()
}
