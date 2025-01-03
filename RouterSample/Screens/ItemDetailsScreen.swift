//
//  ItemDetailsScreen.swift
//  RouterSample
//
//  Created by Monu Rathor on 03/01/25.
//

import SwiftUI

struct ItemDetailsScreen: View {
    @EnvironmentObject private var router: Router

    let id: String

    var body: some View {
        VStack(spacing: 20) {
            Text("Item Details Screen")
            Text("Item ID: \(id)")

            Button(action: { router.sheet(.moreInfo) }, label: {
                Text("More Info")
            })

            Button(action: { router.fullScreenCover(.moreInfo) }, label: {
                Text("More Info In Full Screen")
            })

            Button(action: { router.fullScreenCover(.moreInfo, animation: false) }, label: {
                Text("More Info In Full Screen Without animation")
            })
        }
        .navigationTitle("Item Details")
    }
}

#Preview {
    ItemDetailsScreen(id: "itemID")
}
