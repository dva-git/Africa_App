//
//  CenterModifier.swift
//  Africa
//
//  Created by why_me on 25.03.24.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}


