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
    let aboutText: String
    let excursions: [Excursion]
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

extension TravelGuide {
    
    static func getCountries() -> [TravelGuide] {
        
        var result: [TravelGuide] = []
        let dataManager = DataManager.shared
        
        for count in 0..<dataManager.countries.count {
            result.append(TravelGuide(
                countryName: dataManager.countries[count],
                cityName: dataManager.cities[count],
                image: dataManager.images[count],
                todayWeather: dataManager.todayWeather[count],
                tomorrowWeather: dataManager.tomorrowWeather[count],
                aboutText: dataManager.aboutText[count],
                excursions: dataManager.excursions[dataManager.countries[count]] ?? []
            ))
        }
        
        return result
    }
}
