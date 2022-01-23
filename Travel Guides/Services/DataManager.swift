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
    let aboutText = [
        "Rome is the capital city of Italy. It is also the capital of the Lazio region, the centre of the Metropolitan City of Rome, and a special comune named Comune di Roma Capitale. With 2,860,009 residents in 1,285 km2 (496.1 sq mi), Rome is the country's most populated comune and the third most populous city in the European Union by population within city limits. The Metropolitan City of Rome, with a population of 4,355,725 residents, is the most populous metropolitan city in Italy. Its metropolitan area is the third-most populous within Italy. Rome is located in the central-western portion of the Italian Peninsula, within Lazio (Latium), along the shores of the Tiber. Vatican City (the smallest country in the world) is an independent country inside the city boundaries of Rome, the only existing example of a country within a city. Rome is often referred to as the City of Seven Hills due to its geographic location, and also as the Eternal City. Rome is generally considered to be the cradle of Western Christian culture and civilization, and the center of the Catholic Church.",
        "Moscow is the capital and largest city of Russia. The city stands on the Moskva River in Central Russia, with a population estimated at 13 million residents within the city limits, over 17 million residents in the urban area, and over 20 million residents in the metropolitan area. The city covers an area of 2,511 square kilometres (970 sq mi), while the urban area covers 5,891 square kilometres (2,275 sq mi), and the metropolitan area covers over 26,000 square kilometres (10,000 sq mi). Moscow is among the world's largest cities; being the most populous city entirely in Europe, the largest urban and metropolitan area in Europe, and the largest city by land area on the European continent.",
        "Madrid is the capital and most populous city of Spain. The city has almost 3.4 million inhabitants and a metropolitan area population of approximately 6.7 million. It is the second-largest city in the European Union (EU), surpassed only by Berlin in its administrative limits, and its monocentric metropolitan area is the second-largest in the EU, surpassed only by Paris. The municipality covers 604.3 km2 (233.3 sq mi) geographical area.",
        "Los Angeles, referred to its initials L.A., is the largest city in California. With a 2020 population of 3,898,747, it is the second-largest city in the United States, following New York City. Los Angeles is known for its Mediterranean climate, ethnic and cultural diversity, Hollywood film industry and sprawling metropolitan area.",
        "Paris is the capital and most populous city of France, with an estimated population of 2,175,601 residents as of 2018, in an area of more than 105 square kilometres (41 square miles). Since the 17th century, Paris has been one of Europe's major centres of finance, diplomacy, commerce, fashion, gastronomy, science, and arts. The City of Paris is the centre and seat of government of the region and province of Île-de-France, or Paris Region, which has an estimated population of 12,174,880, or about 18 percent of the population of France as of 2017. The Paris Region had a GDP of €709 billion ($808 billion) in 2017. According to the Economist Intelligence Unit Worldwide Cost of Living Survey in 2018, Paris was the second most expensive city in the world, after Singapore and ahead of Zürich, Hong Kong, Oslo, and Geneva. Another source ranked Paris as most expensive, on par with Singapore and Hong Kong, in 2018."
    ]
    
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
                description: "Liguria is a region of north-western Italy; its capital is Genoa. Its territory is crossed by the Alps and the Apennines mountain range and is roughly coextensive with the former territory of the Republic of Genoa.",
                image: "https://www.reckontalk.com/wp-content/uploads/2019/07/best-places-visit-in-italy-Cinque-Terre.jpg"),
            Excursion(
                title: "It's better...",
                description: "Venice is a city in northeastern Italy and the capital of the Veneto region. It is built on a group of 118 small islands that are separated by canals and linked by over 400 bridges.",
                image: "https://cdn1.veneziaautentica.com/wp-content/uploads/2016/11/What-is-Venice.jpg")
        ],
        "Russia": [
            Excursion(
                title: "Moscow never sleep!",
                description: "No sleep and so that",
                image: "https://i1.sndcdn.com/artworks-000570108872-jp9z0m-t500x500.jpg"),
            Excursion(
                title: "The Best Russian's restaurant",
                description: "Twins Garden is a restaurant based on the concept of a symbiosis of science and nature. In our kitchen we use the latest technological developments and products from our own farm.",
                image: "https://cdnimg.rg.ru/i/gallery/100f83e9/7_87b54010.jpg")
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
