//
//  YoutubeSearchResponse.swift
//  BlossomMovie
//
//  Created by Syimyk on 3/9/26.
//

import Foundation

struct YoutubeSearchResponse: Codable {
    let items: [ItemProperties]? 
}

struct ItemProperties: Codable {
    let id: IdProperties
}

struct IdProperties: Codable {
    let videoId: String?
}
