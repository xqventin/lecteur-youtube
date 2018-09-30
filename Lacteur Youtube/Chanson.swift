//
//  Chanson.swift
//  Lacteur Youtube
//
//  Created by Quentin Honerchick on 30/09/2018.
//  Copyright © 2018 Quentin Honerchick. All rights reserved.
//

import Foundation

class Chanson {
    
    private var _artiste: String
    private var _titre: String
    private var _code: String
    private var _baseURLVideo = "https://www.youtube.com/embed/"
    private var _baseURLMiniature = "http://i.ytimg.com/vi/"
    private var _finURLMiniature = "/maxresdefault.jpg"
    
    var artiste: String {
        return _artiste
    }
    
    var titre: String {
        return _titre
    }
    
    var videoURL: String {
        return _baseURLVideo + _code
    }
    
    var miniatureURL: String {
        return _baseURLMiniature + _code + _finURLMiniature
    }
    init(artiste: String, titre: String, code: String) {
        self._artiste = artiste
        self._titre = titre
        self._code = code
    }
    
}
