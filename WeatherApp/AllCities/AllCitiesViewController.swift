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

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
}

    // MARK: - Table view data source

extension AllCitiesViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cities.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cityCell", for: indexPath) as! AllCitiesCell
        cell.cityName.text = cities[indexPath.row]
        return cell
    }
}

