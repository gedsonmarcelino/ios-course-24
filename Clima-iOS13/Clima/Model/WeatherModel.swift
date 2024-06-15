//
//  WeatherModel.swift
//  Clima
//
//  Created by Gedson Marcelino on 02/06/24.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let id: String
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var icon:String {
        switch(temperature){
            case 0...10:
                return "cloud"
            default:
                return "sun.max"
        }
    }
    
    init(data:WeatherData) {
        self.id = data.id
        self.cityName = data.city
        self.temperature = data.temperature
    }
}
