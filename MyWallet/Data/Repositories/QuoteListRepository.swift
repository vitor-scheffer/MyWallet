//
//  QuoteListRepository.swift
//  MyWallet
//
//  Created by Vitor Scheffer on 08/07/24.
//

import Foundation

struct QuoteListPath {
    static let path = "/api/quote/list"
}

final public class QuoteListRepository: QuoteListRepositoryProtocol {
    
    private let apiService: CoreApiProtocol?
    
    init(apiService: CoreApiProtocol) {
        self.apiService = apiService
    }
    
    func getQuoteList(completion: @escaping (CompletionStatus<QuoteListResponse>) -> Void) {
        apiService?.requestObject(
            endpoint: QuoteListPath.path,
            method: .get,
            headers: nil,
            parameters: nil,
            type: QuoteListResponse.self,
            completion: completion
        )
    }
}
