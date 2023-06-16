//
//  CardGalleryItem.swift
//  Blaze
//
//  Created by Krzys Kopytek on 2023-06-14.
//

import SwiftUI

struct CardGalleryItem<Content: View, S: ShapeStyle>: View {
    let backgroundStyle: S
    let action: () -> Void
    @ViewBuilder var label: Content

    var body: some View {
        Button(action: action) {
            CardContainerView {
                label
                    .font(Design.cardViewingFont)
                    .multilineTextAlignment(.center)
                    .lineLimit(3)
                    .minimumScaleFactor(0.5)
                    .padding()
            }
        }
        .backgroundStyle(backgroundStyle)
        .buttonStyle(Design.galleryButtonStyle)
        .padding(Design.galleryItemPadding)
    }
}
