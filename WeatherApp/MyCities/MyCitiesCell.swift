//
//  MyCityCell.swift
//  WeatherApp
//
//  Created by Иван on 11/24/21.
//

import UIKit

class MyCitiesCell: UITableViewCell {
    
    @IBOutlet weak var cityName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
