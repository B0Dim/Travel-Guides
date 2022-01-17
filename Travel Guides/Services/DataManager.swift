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
    
    func getCountries() -> [TravelGuide] {
        var result: [TravelGuide] = []
        for count in 0..<countries.count {
            result.append(TravelGuide(
                countryName: countries[count],
                cityName: cities[count],
                image: "",
                todayWeather: todayWeather[count],
                tomorrowWeather: tomorrowWeather[count],
                excursions: excursions[countries[count]] ?? []
            ))
        }
        return result
    }
    
}
