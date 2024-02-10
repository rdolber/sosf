//
//  Item.swift
//  StreetsOfSanFrancisco
//
//  Created by Ray Dolber on 2/10/24.
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
