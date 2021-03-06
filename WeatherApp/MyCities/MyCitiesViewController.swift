//
//  MyCityViewController.swift
//  WeatherApp
//
//  Created by Иван on 11/24/21.
//

import UIKit

class MyCitiesViewController: UITableViewController {
    
    var cities = [String]()
    
    @IBAction func addCity(segue: UIStoryboardSegue) {
        // Проверяем идентификатор перехода, чтобы убедиться, что это нужный
        if segue.identifier == "addCity" {
            // Получаем ссылку на контроллер, с которого осуществлен переход
            guard let allCitiesController = segue.source as? AllCitiesViewController
            else { return }
            // Получаем индекс выделенной ячейки
            if let indexPath =
                allCitiesController.tableView.indexPathForSelectedRow {
                // Получаем город по индексу
                let city = allCitiesController.cities[indexPath.row]
                // Проверяем, что такого города нет в списке
                if !cities.contains(city) {
                    // Добавляем город в список выбранных
                    cities.append(city)
                    // Обновляем таблицу
                    tableView.reloadData()
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension MyCitiesViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath:
                    IndexPath) -> UITableViewCell {
        // Получаем ячейку из пула
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCitiesCell", for: indexPath) as! MyCitiesCell
        // Получаем город для конкретной строки
        let city = cities[indexPath.row]
        // Устанавливаем город в надпись ячейки
        cell.cityName.text = city
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        // Если была нажата кнопка «Удалить»
        if editingStyle == .delete {
            // Удаляем город из массива
            cities.remove(at: indexPath.row)
            // И удаляем строку из таблицы
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}

