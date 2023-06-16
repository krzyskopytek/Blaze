//
//  EditorToolbar.swift
//  Blaze
//
//  Created by Krzys Kopytek on 2023-06-14.
//

import SwiftUI

struct EditorToolbar: ToolbarContent {
    let isEnabled: Bool
    @Binding var editing: Bool

    var body: some ToolbarContent {
        ToolbarItem {
            if Design.editFeatureEnabled {
                Button {
                    editing.toggle()
                } label: {
                    Image(systemName: editing ? "play" : "pencil" )
                }
                .disabled(!isEnabled)
            } else {
                EmptyView()
            }
        }
    }
}
