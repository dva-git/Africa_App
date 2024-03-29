//
//  VideoModel.swift
//  Africa
//
//  Created by why_me on 24.03.24.
//

import SwiftUI

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
