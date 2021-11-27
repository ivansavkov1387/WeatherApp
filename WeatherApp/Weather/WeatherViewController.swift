//
//  WeatherViewController.swift
//  WeatherApp
//
//  Created by Иван on 11/26/21.
//

import UIKit

class WeatherViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

}

extension WeatherViewController {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WeatherCell", for: indexPath) as! WeatherCell
        cell.weather.text = "30 C"
        cell.time.text = "30.08.2017 18:00"
        return cell
        
    }
}
