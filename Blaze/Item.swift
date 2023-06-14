//
//  Item.swift
//  Blaze
//
//  Created by Krzys Kopytek on 2023-06-14.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
