//
//  WeatherManager.swift
//  Clima
//
//  Created by Gedson Marcelino on 02/06/24.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "http://localhost:3000/weather"
    
    var delegate:WeatherManagerDelegate?
    
    func fetch(cityName:String){
        let urlString = "\(weatherURL)/\(cityName.lowercased())"
        print(urlString)
        
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url, completionHandler:handle(data: response: error: ) )
            task.resume()
        }
    }
    
    func handle(data: Data?, response: URLResponse?, error: Error?){
        if error != nil {
            print(error!)
            return
        }
        
        if let safeData = data {
            if let weather = parseJSON(safeData) {
                delegate?.didUpdateWeather(weather: weather)
            }
           
        }
    }
    
    func parseJSON(_ data: Data) -> WeatherModel? {
        let decoder = JSONDecoder()
        
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: data)
            let weather = WeatherModel(data: decodedData)
            return weather
        } catch {
            print(error)
            return nil
        }
        
    }
}
