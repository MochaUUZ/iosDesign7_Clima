//
//  weatherModel.swift
//  Clima
//
//  Created by Sheng hao Dong on 3/19/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct weatherModel {
    let conditionID: Int
    let cityName: String
    let temperature: Double
    
    var conditionName: String {
        switch conditionID {
                case 200...232:
                    return "cloud.bolt"
                case 300...321:
                    return "cloud.drizzle"
                case 500...531:
                    return "cloud.rain"
                case 600...622:
                    return "cloud.snow"
                case 701...781:
                    return "cloud.fog"
                case 800:
                    return "sun.max"
                case 801...804:
                    return "cloud.bolt"
                default:
                    return "cloud"
                }
    }
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
}
