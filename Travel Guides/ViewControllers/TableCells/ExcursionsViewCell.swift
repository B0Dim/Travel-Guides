//
//  ExcursionsViewCell.swift
//  Travel Guides
//
//  Created by  BoDim on 20.01.2022.
//

import UIKit

class ExcursionsViewCell: UITableViewCell {

    @IBOutlet weak var excursionImage: UIImageView!
    @IBOutlet weak var titleExcursionLabel: UILabel!
    @IBOutlet weak var aboutExcursionLabel: UILabel!
    
    fileprivate var imageUrl: URL?
    fileprivate var image: UIImage? {
        get {
            excursionImage.image
        }
        
        set {
            excursionImage.image = newValue
            excursionImage.contentMode = .scaleToFill
        }
    }
    
    func fetchImage(url: String) {
        imageUrl = URL(string: url)
        let queue = DispatchQueue.global(qos: .utility)
        queue.async {
            guard let url = self.imageUrl, let imageData = try? Data(contentsOf: url) else { return }
            DispatchQueue.main.async {
                self.image = UIImage(data: imageData)
            }
        }
    }

}
