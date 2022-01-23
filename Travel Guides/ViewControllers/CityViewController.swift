//
//  CityViewController.swift
//  Travel Guides
//
//  Created by  BoDim on 12.01.2022.
//

import UIKit

class CityViewController: UIViewController {
       
    @IBOutlet weak var tableView: UITableView!
    
    internal var cityGuide: TravelGuide!
    internal var imageCity: UIImage? = nil
    private let countRowsDefault = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.separatorColor = .white
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//MARK: TableView Data Source
extension CityViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cityGuide.excursions.count + countRowsDefault
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TitleCell", for: indexPath) as! TitleCityViewCell
            cell.titleCityLabel.text = cityGuide.cityName
            cell.temperatureTodayLabel.text = String(describing: cityGuide.todayWeather)
            cell.temperatureTomorrowLabel.text = String(describing: cityGuide.tomorrowWeather)
            
            return cell
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AboutCell", for: indexPath) as! AboutCityViewCell
            cell.aboutCityLabel.text = cityGuide.aboutText
            
            return cell
        } else if (indexPath.row == 2 || indexPath.row == (cityGuide.excursions.count + 1)) && !cityGuide.excursions.isEmpty {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ExcursionsCell", for: indexPath) as! ExcursionsViewCell
            cell.titleExcursionLabel.text = cityGuide.excursions[indexPath.row - 2].title
            cell.aboutExcursionLabel.text = cityGuide.excursions[indexPath.row - 2].description
            cell.fetchImage(url: cityGuide.excursions[indexPath.row - 2].image)
            
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ImageCell", for: indexPath) as! ImageCityViewCell
            cell.cityImage.image = imageCity
            
            return cell
        }
    }
  
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

}
