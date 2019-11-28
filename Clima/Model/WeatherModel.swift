//
//  WeatherModel.swift
//  Clima
//
//  Created by Lisa Herzberg on 11/27/19.
//  Copyright © 2019 Lisa Herzberg. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        let updatedTemp = temperature - 226
        return String(format: "%.0f", updatedTemp)
    }
    
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bold"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 700...781:
            return "cloud.fog"
        case 800:
            return "cloud"
        case 801...804:
            return "sun.max"
        default:
            return "cloud"
        }
    }
}
