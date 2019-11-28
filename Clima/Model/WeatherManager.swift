//
//  WeatherManager.swift
//  Clima
//
//  Created by Lisa Herzberg on 11/25/19.
//  Copyright © 2019 Lisa Herzberg. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherUrl = "https://api.openweathermap.org/data/2.5/weather?appid=596a7c0ee424b8f8c4078ad8f8d2061a"
    
    func fetchWeather(cityName: String){
        let urlString = "\(weatherUrl)&q=\(cityName)"
        performRequest(urlString: urlString)
    }

    
    func performRequest(urlString: String) {
        if let url = URL(string: urlString){
            
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url) { (data, response, error) in
                 if error != nil {
                           print(error!)
                           return
                       }
                       
                       if let safeData = data {
                           let dataString = String(data: safeData, encoding: .utf8)
                           print(dataString)
                       }
            }
                          
            task.resume()
            
        }
            
    }

}
