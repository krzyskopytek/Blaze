//
//  CardContainerView.swift
//  Blaze
//
//  Created by Krzys Kopytek on 2023-06-14.
//

import SwiftUI

/// A container for card content
struct CardContainerView<Content: View>: View {
    @ViewBuilder var content: Content

    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(.clear)
            content
                .foregroundStyle(.cardText)
        }
        .aspectRatio(2, contentMode: .fit)
        .background()
        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
    }
}
