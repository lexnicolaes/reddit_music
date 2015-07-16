//
//  TrackList.swift
//  RedditMusic
//
//  Created by Lex Nicolaes on 16/07/15.
//  Copyright (c) 2015 Polyon. All rights reserved.
//

import Foundation
import ObjectMapper

class TrackList: Mappable {
    var timestamp: NSTimeInterval?
    var tracks: [Track]?
    
    required init?(_ map: Map) {
        mapping(map)
    }
    
    // Mappable
    func mapping(map: Map) {
        timestamp <- map["timestamp"]
        tracks    <- map["tracks"]
    }
}

