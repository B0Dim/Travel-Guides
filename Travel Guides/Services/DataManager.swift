//
//  DataManager.swift
//  Travel Guides
//
//  Created by Sergey Efimov on 16.01.2022.
//

class DataManager {
    static let shared = DataManager()
    
    let countries = ["Italy", "Russia", "Spain", "USA", "France"]
    let cities = ["Rome", "Moscow", "Madrid", "Los-Angeles", "Paris"]
    
    let images = [
    "https://andantetravels.co.uk/media/2348/rome-colosseum.jpg",
    "https://images.thrillophilia.com/image/upload/s--XcozMrbO--/c_fill,g_auto,h_600,q_auto,w_975/f_auto,fl_strip_profile/v1/images/photos/000/178/583/original/1573565509_cover.jpg.jpg",
    "https://images.unsplash.com/photo-1539037116277-4db20889f2d4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWFkcmlkfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
    "https://images.unsplash.com/photo-1515896769750-31548aa180ed?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bG9zJTIwYW5nZWxlc3xlbnwwfHwwfHw%3D&w=1000&q=80",
    "https://i0.wp.com/thegoodlifefrance.com/wp-content/uploads/2019/11/paris-in-winter.jpg?ssl=1"
    ]
    
    let excursions = [
        "Italy": [
            Excursion(
                title: "The best Italy place",
                description: "S0 so so ...",
                image: ""),
            Excursion(
                title: "It's better...",
                description: "There is a good place",
                image: "")
        ],
        "Russia": [
            Excursion(
                title: "Moscow never sleep!",
                description: "No sleep and so that",
                image: "")
        ],
        "Spain": [
            Excursion(
                title: "Hola",
                description: "The sun and sea",
                image: "")
        ],
        "USA": [
            Excursion(
                title: "Los-Angeles in fire",
                description: "Greatest show in the world",
                image: "")
        ],
        "France": [
            Excursion(
                title: "Eifel in stars",
                description: "See Paris and die",
                image: "")
        ]
    ]
    
    let todayWeather = Array(repeating: Int.random(in: -10...30), count: 5)
    let tomorrowWeather = Array(repeating: Int.random(in: -10...30), count: 5)
    
    private init() {}
}
