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
        Text("Olá, Vitor!")
            .font(.mwTitle)
        
        VStack {
            Text("Saldo total")
                .font(.mwBody)
            Text("Saldo em uso")
                .font(.mwFootnote)
                
        }
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
