//
//  QuotesUseCase.swift
//  MyWallet
//
//  Created by Vitor Scheffer on 08/07/24.
//

import Foundation

final public class QuotesUseCase: QuotesUseCaseProtocol {
    private let repo: QuoteListRepositoryProtocol?
    
    init(repository: QuoteListRepositoryProtocol) {
        self.repo = repository
    }
    
    func execute(completion: @escaping (CompletionStatus<QuoteListResponse>) -> Void) {
        repo?.getQuoteList(completion: completion)
    }
}
