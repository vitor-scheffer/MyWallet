//
//  HomeViewModel.swift
//  MyWallet
//
//  Created by Vitor Scheffer on 08/07/24.
//

import Foundation

struct HomeViewState {
    var quoteList: QuoteListResponse?
    var quoteError: String? = ""
}

final public class HomeViewModel: ObservableObject {
    @Published private(set) var state: HomeViewState
    private let quotesUseCase: QuotesUseCaseProtocol?
    
    init(initialState: HomeViewState = .init(), quotesUseCase: QuotesUseCaseProtocol) {
        self.state = initialState
        self.quotesUseCase = quotesUseCase
    }
    
    func getQuoteList() {
        quotesUseCase?.execute { [weak self] result in
            switch result {
            case .success(let quoteList):
                self?.state.quoteList = quoteList
            case .failure(let error):
                self?.state.quoteError = error.message
            }
        }
    }
}
