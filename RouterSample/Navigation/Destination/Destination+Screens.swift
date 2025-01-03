//
//  Destination+Screens.swift
//  RouterSample
//
//  Created by Monu Rathor on 03/01/25.
//

import SwiftUI

extension Destination {
    var screen: AnyView { AnyView(destinationView) }

    private var destinationView: any View {
        switch self {
        case .welcome:
            return WelcomeScreen()
        case .login:
            return LoginScreen()
        case .register:
            return RegisterScreen()
        case .homeList:
            return HomeListScreen()
        case .itemDetails(let id):
            return ItemDetailsScreen(id: id)
        case .moreInfo:
            return ItemMoreInfoScreen()
        }
    }
}
