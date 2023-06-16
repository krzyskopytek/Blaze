//
//  CardReaderView.swift
//  Blaze
//
//  Created by Krzys Kopytek on 2023-06-14.
//

import SwiftUI

struct CardReaderView: View {
    let color: Color
    let text: String
    var body: some View {
        CardContainerView {
            Text(text)
                .font(Design.cardViewingFont)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.33)
                .padding()
        }
        .backgroundStyle(color)
    }
}
