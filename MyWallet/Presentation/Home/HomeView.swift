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
        NavigationView {
            VStack {
                HStack {
                    Text("Olá, Vitor!")
                        .font(.mwTitle)
                        .padding()
                        
                }
                .background(Color.MWbody)
                .cornerRadius(8)
                
                Spacer()
                
                VStack {
                    Text("Saldo total")
                        .font(.mwBody)
                    Text("Saldo em uso")
                        .font(.mwFootnote)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .background(.white)
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
