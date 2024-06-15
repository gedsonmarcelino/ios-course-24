//
//  WeatherManagerDelegate.swift
//  Clima
//
//  Created by Gedson Marcelino on 02/06/24.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation

protocol WeatherManagerDelegate{
    func didUpdateWeather(weather: WeatherModel)
}
