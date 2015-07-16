//
//  Track.swift
//  RedditMusic
//
//  Created by Lex Nicolaes on 25-05-15.
//  Copyright (c) 2015 Polyon. All rights reserved.
//

import UIKit
import ObjectMapper

class Track: Mappable {
    var artistName: String?
    var trackName: String?
    var streamUrl: String?
    var artUrl: String?
    
    required init?(_ map: Map) {
        mapping(map)
    }
    
    // Mappable
    func mapping(map: Map) {
        artistName <- map["artist_name"]
        trackName  <- map["track_name"]
        streamUrl  <- map["stream_url"]
        artUrl     <- map["art_url"]
    }
}

