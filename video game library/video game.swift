//
//  video game.swift
//  video game library
//
//  Created by Kenny Tran on 2/13/18.
//  Copyright © 2018 Kenny Tran. All rights reserved.
//

import Foundation


class VideoGames {
    var genre: String
    var title: String
    var releaseDate: String
    var developer: String
    var publisher: String
    var price: Double
    var checkedOut: Bool
    
    func gameTitle() -> String {
        return "ok"
    }
    
    init(genre: String, title: String, releaseDate: String, developer: String, publisher: String, price: Double, checkedOut: Bool) {
        self.genre = genre
        self.title = title
        self.releaseDate = releaseDate
        self.developer = developer
        self.publisher = publisher
        self.price = price
        self.checkedOut = false
    }
    
}


