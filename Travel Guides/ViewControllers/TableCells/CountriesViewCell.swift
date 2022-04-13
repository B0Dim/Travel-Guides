//
//  CountriesViewCell.swift
//  Travel Guides
//
//  Created by  BoDim on 19.01.2022.
//

import UIKit

class CountriesViewCell: UITableViewCell {

    @IBOutlet weak var countryImage: UIImageView!
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var countryNameLabel: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    fileprivate var imageUrl: URL?
    fileprivate var image: UIImage? {
        get {
            countryImage.image
        }
        
        set {
            activityIndicator.stopAnimating()
            activityIndicator.isHidden = true
            countryImage.image = newValue
            countryImage.contentMode = .scaleToFill
            countryImage.layer.cornerRadius = 6
        }
    }
    
    func fetchImage(url: String) {
        imageUrl = URL(string: url)
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
        let queue = DispatchQueue.global(qos: .utility)
        queue.async {
            guard let url = self.imageUrl, let imageData = try? Data(contentsOf: url) else { return }
            DispatchQueue.main.async {
                self.image = UIImage(data: imageData)
            }
        }
    }
}

