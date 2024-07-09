//
//  HomeView.swift
//  MyWallet
//
//  Created by Vitor Scheffer on 08/07/24.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject private var model: HomeViewModel
    
    init(model: HomeViewModel) {
        self.model = model
    }
    
    var body: some View {
        Text("Bem-vindo!")
    }
}

#if DEBUG
#Preview {
    HomeView(model: HomeViewModel(
        quotesUseCase: QuotesUseCase(
            repository: QuoteListRepository(
                apiService: CoreApi()
            )
        )
    ))
}
#endif
