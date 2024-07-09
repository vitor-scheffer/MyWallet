//
//  QuotesUseCaseProtocol.swift
//  MyWallet
//
//  Created by Vitor Scheffer on 08/07/24.
//

import Foundation

protocol QuotesUseCaseProtocol {
    func execute(
        completion: @escaping (CompletionStatus<QuoteListResponse>) -> Void
    )
}
