//
//  ItemMoreInfoScreen.swift
//  RouterSample
//
//  Created by Monu Rathor on 03/01/25.
//

import SwiftUI

struct ItemMoreInfoScreen: View {
    @EnvironmentObject private var router: Router

    var body: some View {
        VStack(spacing: 20) {
            Text("Items More Info")
            Button(action: { router.dismiss() }, label: {
                Text("Dismiss")
            })
        }
    }
}

#Preview {
    ItemMoreInfoScreen()
}
