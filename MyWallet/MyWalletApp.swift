//
//  MyWalletApp.swift
//  MyWallet
//
//  Created by Vitor Scheffer on 08/07/24.
//

import SwiftUI

@main
struct MyWalletApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView(model: .init(
                quotesUseCase: QuotesUseCase(
                    repository: QuoteListRepository(
                        apiService: CoreApi()
                    )
                )
            ))
        }
    }
}
