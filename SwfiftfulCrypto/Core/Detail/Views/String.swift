//
//  String.swift
//  SwfiftfulCrypto
//
//  Created by Obi on 8/7/23.
//

import Foundation

extension String {
    
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
