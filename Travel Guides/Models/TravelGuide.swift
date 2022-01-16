//
//  Country.swift
//  Travel Guides
//
//  Created by Sergey Efimov on 16.01.2022.
//

struct TravelGuide {
    let countryName: String
    let cityName: String
    let image: String
    let todayWeather: Int
    let tomorrowWeather: Int
    let excursions: [Excursion]
    var isFavorite = false
}

struct Excursion {
    let title: String
    let description: String
    let image: String
}

final class Favorite {
    var shared = Favorite()
    var travelGuides: [TravelGuide] = []
    
    private init() {}
    
    func addFavoriteGuide(add guide: TravelGuide) {
        travelGuides.append(guide)
    }
    
    func removeFavoriteGuide(from position: Int) {
        travelGuides.remove(at: position)
    }
}
