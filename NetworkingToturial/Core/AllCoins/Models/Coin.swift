//
//  Coin.swift
//  NetworkingToturial
//
//  Created by Abbas Jafari on 18/06/1403 AP.
//

import Foundation

class Coin: Codable, Identifiable {
    let id: String
    let symbol: String
    let name: String
    let currentPrice: Double
    let marketCapRank: Int
    
    enum CodingKeys: String, CodingKey {
        case id, symbol, name
        case currentPrice = "current_price"
        case marketCapRank = "market_cap_rank"
    }
}
