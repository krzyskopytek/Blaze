//
//  ContentView.swift
//  Blaze
//
//  Created by Krzys Kopytek on 2023-06-14.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Query private var cards: [Card]
    @State private var editing = false
    @State private var navigationPath: [Card] = []
    @Environment(\.modelContext) private var modelContext
    
    var body: some View {
        NavigationStack(path: $navigationPath) {
            CardGallery(cards: cards, editing: $editing) { card in
                withAnimation { navigationPath.append(card) }
            } addCard: {
                let newCard = Card(front: "Sample Front", back: "Sample Back")
                modelContext.insert(object: newCard)
                withAnimation {
                    editing = true
                    navigationPath.append(newCard)
                }
            }
            .padding()
            .toolbar { EditorToolbar(isEnabled: false, editing: $editing) }
        }
    }
}
    
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .modelContainer(previewContainer)
    }
}
