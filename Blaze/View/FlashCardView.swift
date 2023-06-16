//
//  FlashCardView.swift
//  Blaze
//
//  Created by Krzys Kopytek on 2023-06-14.
//

import SwiftUI

struct FlashCardView: View {
    @State private var flipped = false
    var front: Angle { flipped ? .degrees(180) : .degrees(0) }
    var back: Angle { flipped ? .degrees(0) : .degrees(-180) }
    var card: Card

    var body: some View {
        Button {
            withAnimation { flipped.toggle() }
        } label: {
            VStack {
                #if !os(tvOS)
                Spacer(minLength: 0)
                #endif
                ZStack {
                    CardReaderView(color: .cardFront, text: card.front)
                        .horizontalFlip(front, visible: !flipped)
                    CardReaderView(color: .cardBack, text: card.back)
                        .horizontalFlip(back, visible: flipped)
                        .fontDesign(.monospaced)
                }
                #if !os(tvOS)
                Spacer(minLength: 0)
                #endif
            }
        }
        .buttonStyle(Design.carouselCardButtonStyle)
        .focusEffectDisabled()
        .padding(.horizontal, Design.carouselCardHorizontalPadding)
    }
}
