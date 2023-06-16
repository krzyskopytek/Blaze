//
//  SampleData.swift
//  Blaze
//
//  Created by Krzys Kopytek on 2023-06-14.
//

struct SampleDeck {
    static var contents: [Card] = [
        Card(front: "Open Settings in a single click", back: "SettingsLink"),
        Card(front: "Configure the toolbar title display size", back: "toolbarTitleDisplayMode(_:)"),
        Card(front: "Access both the old and new values that changed", back: "onChange(of:initial:_:)"),
    ]
}
