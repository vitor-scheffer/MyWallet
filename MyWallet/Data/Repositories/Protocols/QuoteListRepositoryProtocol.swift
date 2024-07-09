//
//  QuoteListRepositoryProtocol.swift
//  MyWallet
//
//  Created by Vitor Scheffer on 08/07/24.
//

import Foundation

protocol QuoteListRepositoryProtocol {
    func getQuoteList(
        completion: @escaping (CompletionStatus<QuoteListResponse>) -> Void
    )
}
