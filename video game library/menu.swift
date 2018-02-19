//
//  menu.swift
//  video game library
//
//  Created by Kenny Tran on 2/15/18.
//  Copyright © 2018 Kenny Tran. All rights reserved.
//

import Foundation


func mainMenu() {
    var mainMenu: Bool
        print("""
                    MAIN MENU
            1. Add game
            2. Remove game
            3. Check in game
            4. Check out game
            5. Quit
        """)
}

func date() -> String {
    let currentDate = Date()
    let dateFormat = DateFormatter()
    dateFormat.dateFormat = "MM/dd/yyyy hh:mm"
    return dateFormat.string(from: currentDate)
}

func dueDate() -> String {
    let dueDate = Date()
    let dateFormat = DateFormatter()
    dateFormat.dateFormat = "MM/dd/yyyy hh:mm"
    return dateFormat.string(from: dueDate + 600)
}

func menu1() {
    print("What game would you like to add?")
    var title = readLine()
    print("What genre is it?")
    var genre = readLine()
    print("When was it released?")
    var releaseDate = readLine()
    print("Who is the developer?")
    var developer = readLine()
    print("Who is the publisher?")
    var publisher = readLine()
    print("How much does the game cost?")
    var price = Double(readLine()!)!
    
    let game1 = VideoGames(genre: genre!, title: title!, releaseDate: releaseDate!, developer: developer!, publisher: publisher!, price: price, checkedOut: false)
    var menu = readLine()
}


func menu2() {
    print("What game do you want to remove?")
    
}

func menu3() {
    print("please select a game to check in")
    
}


func menu4() {
    print("What game do you want to check out?")
    let subnautica = VideoGames(genre: "Open-World Survival", title: "Subnautica", releaseDate: "January 23, 2018", developer: "Unknown Worlds Entertainment", publisher: "Unknown Worlds Entertainment", price: 24.99, checkedOut: false)
    games.append(subnautica)
    let abzu = VideoGames(genre: "Adventure", title: "ABZU", releaseDate: "August 2, 2016", developer: "Giant Squid", publisher: "505 Games", price: 19.99, checkedOut: false)
    games.append(abzu)
    let nierAutomata = VideoGames(genre: "Action-Adventure, RPG", title: "NieR: Automata", releaseDate: "March 17, 2017", developer: "Square Enix", publisher: "Square Enix", price: 59.99, checkedOut: false)
    games.append(nierAutomata)
    let xcom2 = VideoGames(genre: "strategy", title: "XCOM 2", releaseDate: "February 5, 2016", developer: "Firaxis", publisher: "2K", price: 59.99, checkedOut: false)
    games.append(xcom2)
    let stardewvalley = VideoGames(genre: "Simulation, RPG", title: "Stardew Valley", releaseDate: "February 26, 2016", developer: "ConcernedApe", publisher: "Chucklefish", price: 14.99, checkedOut: false)
    games.append(stardewvalley)
    let payday2 = VideoGames(genre: "First-Person Shooter", title: "PayDay 2", releaseDate: "Aug 13, 2013", developer: "OVERKILL", publisher: "Starbreeze", price: 19.99, checkedOut: false)
    games.append(payday2)
    
    for game in games {
        print(game.title)
    }
    
    var checkOut = readLine()
    
    if checkOut?.lowercased().range(of:"subnautica") != nil {
        print("Subnautica has been checked out")
    } else {
        print("Error try again")
    }
    if checkOut?.lowercased().range(of:"abzu") != nil {
        print("ABZU has been checked out")
    }
    if checkOut?.lowercased().range(of:"nier automata") != nil {
        print("NieR: Automata has been checked out")
    }
    if checkOut?.lowercased().range(of:"xcom 2") != nil {
        print("XCOM 2 has been checked out")
    }
    if checkOut?.lowercased().range(of:"stardew valley") != nil {
        print("Stardew Valley has been checked out")
    }
    if checkOut?.lowercased().range(of:"payday 2") != nil {
        print("PayDay 2 has been checked out")
    } else {
        print("try again")
    }
    if checkOut != nil {
    print("Please return" + " " +  "\(dueDate())")
    }
}
