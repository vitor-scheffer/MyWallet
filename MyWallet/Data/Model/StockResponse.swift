//
//  StockResponse.swift
//  MyWallet
//
//  Created by Vitor Scheffer on 08/07/24.
//

import Foundation

public struct StockResponse: Decodable {
    let stock: String
    let name: String
    let close: Float
    let change: Double
    let volume: Int
    let market_cap: Int
    let logo: String
    let sector: String
    let type: String
}
