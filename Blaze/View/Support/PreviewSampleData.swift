//
//  PreviewSampleData.swift
//  Blaze
//
//  Created by Krzys Kopytek on 2023-06-14.
//

import SwiftData

@MainActor
let previewContainer: ModelContainer = {
    do {
        let container = try ModelContainer(
            for: Card.self, ModelConfiguration(inMemory: true)
        )
        for card in SampleDeck.contents {
            container.mainContext.insert(object: card)
        }
        return container
    } catch {
        fatalError("Failed to create container")
    }
}()
