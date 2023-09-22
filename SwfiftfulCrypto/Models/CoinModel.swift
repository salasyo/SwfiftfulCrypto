//
//  CoinModel.swift
//  SwfiftfulCrypto
//
//  Created by Obi on 8/1/23.
//

import Foundation
// Coin Gecko API Info
/*

URL: https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=2&sparkline=true&price_change_percentage=24h&locale=en
 
 JSON Response:
 {
     "id": "lukso-token",
     "symbol": "lyxe",
     "name": "LUKSO [OLD]",
     "image": "https://assets.coingecko.com/coins/images/11423/large/LYX.png?1689818779",
     "current_price": 6.5,
     "market_cap": 101190699,
     "market_cap_rank": 251,
     "fully_diluted_valuation": 649661317,
     "total_volume": 367963,
     "high_24h": 6.75,
     "low_24h": 6.29,
     "price_change_24h": -0.056044510595714137,
     "price_change_percentage_24h": -0.8546,
     "market_cap_change_24h": -1172135.9700158685,
     "market_cap_change_percentage_24h": -1.14508,
     "circulating_supply": 15575915.708856644,
     "total_supply": 100000000,
     "max_supply": 100000000,
     "ath": 41.18,
     "ath_change_percentage": -84.12565,
     "ath_date": "2021-11-04T07:31:04.430Z",
     "atl": 0.203056,
     "atl_change_percentage": 3119.19773,
     "atl_date": "2020-07-18T10:14:36.612Z",
     "roi": null,
     "last_updated": "2023-08-01T18:51:56.000Z",
     "sparkline_in_7d": {
       "price": [
         7.392601081592378,
         6.9752655942106045,
       ]
     },
     "price_change_percentage_24h_in_currency": -0.8546005796166384
   },
*/

struct CoinModel: Identifiable, Codable {
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap, marketCapRank, fullyDilutedValuation: Double?
    let totalVolume, high24H, low24H: Double?
    let priceChange24H, priceChangePercentage24H: Double?
    let marketCapChange24H: Double?
    let marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply, maxSupply, ath: Double?
    let athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage24HInCurrency: Double?
    let currentHoldings: Double?
    
    enum CodingKeys: String, CodingKey {
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case lastUpdated = "last_updated"
        case sparklineIn7D = "sparkline_in_7d"
        case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
        case currentHoldings
    }
    
    func updateHoldings(amount: Double) -> CoinModel{
        return CoinModel(id: id, symbol: symbol, name: name, image: image, currentPrice: currentPrice, marketCap: marketCap, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24H: high24H, low24H: low24H, priceChange24H: priceChange24H, priceChangePercentage24H: priceChangePercentage24H, marketCapChange24H: marketCapChange24H, marketCapChangePercentage24H: marketCapChangePercentage24H, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: atl, atlChangePercentage: atlChangePercentage, atlDate: atlDate, lastUpdated: lastUpdated, sparklineIn7D: sparklineIn7D, priceChangePercentage24HInCurrency: priceChangePercentage24HInCurrency, currentHoldings: amount)
    }
    
    var currentHoldingsValue: Double {
        return (currentHoldings ?? 0) * currentPrice
    }
    
    var rank: Int {
        return Int(marketCapRank ?? 0)
    }
    
}

struct SparklineIn7D: Codable {
    let price: [Double]?
}
