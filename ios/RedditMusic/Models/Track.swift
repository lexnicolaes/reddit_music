//
//  Track.swift
//  ListenToThis
//
//  Created by Lex Nicolaes on 25-05-15.
//  Copyright (c) 2015 Polyon. All rights reserved.
//

import UIKit
import ObjectMapper

class Track: Mappable {
    var name: String?
    var length: Int?
    
    required init?(_ map: Map) {
        mapping(map)
    }
    
    // Mappable
    func mapping(map: Map) {
        name    <- map["name"]
        length  <- map["length"]
    }
}

