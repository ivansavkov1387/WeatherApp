//
//  AllCitiesViewController.swift
//  WeatherApp
//
//  Created by Иван on 11/24/21.
//

import UIKit

class AllCitiesViewController: UITableViewController {
    
    var cities = [
        "Moscow",
        "Krasnoyarsk",
        "London",
        "Paris"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

    // MARK: - Table view data source

extension AllCitiesViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AllCitiesCell", for: indexPath) as! AllCitiesCell
        cell.cityName.text = cities[indexPath.row]
        return cell
    }
}

