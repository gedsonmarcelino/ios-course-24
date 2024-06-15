//
//  WheatherData.swift
//  Clima
//
//  Created by Gedson Marcelino on 02/06/24.
//  Copyright © 2024 App Brewery. All rights reserved.
//

struct WeatherData: Codable {
    let id: String
    let city:String
    let temperature: Double
    let description: String
}
