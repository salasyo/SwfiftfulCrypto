//
//  MarketDataModel.swift
//  SwfiftfulCrypto
//
//  Created by Obi on 8/4/23.
//

import Foundation

// JSON Data
/* URL: https://api.coingecko.com/api/v3/global

 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 10019,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 795,
     "total_market_cap": {
       "btc": 41500927.694143526,
       "eth": 659221370.3472892,
       "ltc": 14716495596.900133,
       "bch": 5383697381.024494,
       "bnb": 4995872754.276182,
       "eos": 1681134514699.0996,
       "xrp": 1898357770278.8296,
       "xlm": 8797542554178.3,
       "link": 169579068638.8072,
       "dot": 241970916018.4305,
       "yfi": 195107504.90440792,
       "usd": 1205090383574.9236,
       "aed": 4426339157034.111,
       "ars": 336073511724288.25,
       "aud": 1830050256496.8806,
       "bdt": 131387682086986.53,
       "bhd": 454350406957.72034,
       "bmd": 1205090383574.9236,
       "brl": 5872887475314.035,
       "cad": 1612953223895.8572,
       "chf": 1051476307290.2429,
       "clp": 1026616497767478.1,
       "cny": 8641341613500.69,
       "czk": 26538258203919.875,
       "dkk": 8156051716035.069,
       "eur": 1092960338654.4272,
       "gbp": 945317485220.364,
       "hkd": 9412418695431.107,
       "huf": 426601995785521.4,
       "idr": 18260614073272468,
       "ils": 4401857745891.788,
       "inr": 99632835861189.89,
       "jpy": 170827585648587.6,
       "krw": 1571486063797043,
       "kwd": 370595420208.8785,
       "lkr": 386959916150465.06,
       "mmk": 2531378144698808,
       "mxn": 20581136115884.35,
       "myr": 5488584151991.988,
       "ngn": 924846614874577.5,
       "nok": 12218652417142.865,
       "nzd": 1975738453328.7878,
       "php": 66928918293627.77,
       "pkr": 341682919443227.75,
       "pln": 4854247470795.457,
       "rub": 115538035704884.1,
       "sar": 4520891753619.813,
       "sek": 12753833056488.496,
       "sgd": 1613736532645.1797,
       "thb": 41770783826045.21,
       "try": 32465976086596.2,
       "twd": 38160994631475.336,
       "uah": 44522028068463.92,
       "vef": 120665700107.35727,
       "vnd": 28604098152480100,
       "zar": 22256766090629.926,
       "xdr": 897652545278.823,
       "xag": 50990784534.84044,
       "xau": 620284122.233685,
       "bits": 41500927694143.52,
       "sats": 4150092769414352.5
     },
     "total_volume": {
       "btc": 1241993.213773032,
       "eth": 19728437.744321335,
       "ltc": 440418773.2037125,
       "bch": 161117256.49891064,
       "bnb": 149510876.08001137,
       "eos": 50311108081.33927,
       "xrp": 56811922021.982376,
       "xlm": 263282985640.60352,
       "link": 5074972154.828991,
       "dot": 7241434163.596882,
       "yfi": 5838958.560959081,
       "usd": 36064593288.46296,
       "aed": 132466513409.2893,
       "ars": 10057631096023.42,
       "aud": 54767691367.85989,
       "bdt": 3932023176157.424,
       "bhd": 13597289349.176071,
       "bmd": 36064593288.46296,
       "brl": 175757188931.99545,
       "cad": 48270654886.94327,
       "chf": 31467403517.38925,
       "clp": 30723427022441.613,
       "cny": 258608379093.5809,
       "czk": 794207224415.2805,
       "dkk": 244085167376.3169,
       "eur": 32708891076.75133,
       "gbp": 28290401365.42207,
       "hkd": 281684309109.204,
       "huf": 12766866024115.84,
       "idr": 546483175640750.56,
       "ils": 131733861196.63423,
       "inr": 2981699756702.607,
       "jpy": 5112336371476.28,
       "krw": 47029672231887.23,
       "kwd": 11090764051.034575,
       "lkr": 11580502330045.021,
       "mmk": 75756245749006.52,
       "mxn": 615929156477.0151,
       "myr": 164256190132.3045,
       "ngn": 27677772119230.97,
       "nok": 365666124270.3836,
       "nzd": 59127684308.87535,
       "php": 2002973594674.2651,
       "pkr": 10225503158343.418,
       "pln": 145272473452.5307,
       "rub": 3457692737273.008,
       "sar": 135296177463.2963,
       "sek": 381682410149.7902,
       "sgd": 48294096872.58073,
       "thb": 1250069165399.632,
       "try": 971605316277.3081,
       "twd": 1142039443369.1128,
       "uah": 1332405317104.4617,
       "vef": 3611147725.973801,
       "vnd": 856031365209489.8,
       "zar": 666075530860.891,
       "xdr": 26863938507.08343,
       "xag": 1525995004.8338714,
       "xau": 18563167.457437664,
       "bits": 1241993213773.032,
       "sats": 124199321377303.19
     },
     "market_cap_percentage": {
       "btc": 46.86178377343707,
       "eth": 18.227308841381713,
       "usdt": 6.948641372981784,
       "bnb": 3.0797775731714356,
       "xrp": 2.7772085573910363,
       "usdc": 2.160303102534073,
       "steth": 1.2121945889694614,
       "doge": 0.855708133068885,
       "ada": 0.853704389014903,
       "sol": 0.7672178037498992
     },
     "market_cap_change_percentage_24h_usd": -0.6046454087634706,
     "updated_at": 1691188580
   }
 }
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: {$0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
    
}
