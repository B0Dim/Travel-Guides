//
//  CountriesViewController.swift
//  Travel Guides
//
//  Created by  BoDim on 12.01.2022.
//

import UIKit

class CountriesViewController: UITableViewController {

    private var countries = TravelGuide.getCountries()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = 190
        tableView.separatorColor = .white
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        countries.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellCountry", for: indexPath) as! CountriesViewCell

        cell.fetchImage(url: countries[indexPath.row].image)
        cell.cityNameLabel.text = countries[indexPath.row].cityName
        cell.countryNameLabel.text = countries[indexPath.row].countryName

        return cell
    }

    // MARK: - Navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
    

}
