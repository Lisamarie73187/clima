//
//  WeatherData.swift
//  Clima
//
//  Created by Lisa Herzberg on 11/27/19.
//  Copyright © 2019 Lisa Herzberg. All rights reserved.
//

import Foundation

struct WeatherData: Decodable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Decodable {
    let temp: Double
}

struct Weather: Decodable {
    let description: String
    let id: Int
}


