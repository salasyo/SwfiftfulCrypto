//
//  UIApplication.swift
//  SwfiftfulCrypto
//
//  Created by Obi on 8/3/23.
//

import Foundation
import SwiftUI

extension UIApplication {
     
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
