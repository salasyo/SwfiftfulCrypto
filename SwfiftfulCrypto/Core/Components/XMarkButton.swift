//
//  XMarkButton.swift
//  SwfiftfulCrypto
//
//  Created by Obi on 8/4/23.
//

import SwiftUI

struct XMarkButton: View {
    
    var dismiss: DismissAction?
    
    var body: some View {
        Button (action: {
            dismiss?()
        }, label: {
            Image(systemName: "xmark")
                .font(.headline)
        })
    }
}

struct XMarkButton_Previews: PreviewProvider {
    static var previews: some View {
        XMarkButton()
    }
}
