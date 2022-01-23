//
//  TitleCityViewCell.swift
//  Travel Guides
//
//  Created by  BoDim on 20.01.2022.
//

import UIKit

class TitleCityViewCell: UITableViewCell {

    @IBOutlet weak var titleCityLabel: UILabel!
    @IBOutlet weak var temperatureTodayLabel: UILabel!
    @IBOutlet weak var temperatureTomorrowLabel: UILabel!
    @IBOutlet weak var favoriteButton: UIButton!

    @IBAction func favoriteClicked(_ sender: UIButton) {
        //add or remove favorite
    }
    
}
