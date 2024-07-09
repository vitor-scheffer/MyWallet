//
//  QuoteListResponse.swift
//  MyWallet
//
//  Created by Vitor Scheffer on 08/07/24.
//

import Foundation

public struct QuoteListResponse: Decodable {
    let indexes: Array<StockIndexResponse>
    let stocks: Array<StockResponse>
}
