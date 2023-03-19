//
//  WeatherModel.swift
//  ClearWeather
//
//  Created by Muharrem Köroğlu on 17.03.2023.
//

import Foundation

struct WeatherModel : Decodable {
    
    let name : String
    let weather : [WeatherInfo]
    let main : WeatherTemp
    let wind : WeatherWind
    let sys : WeatherLocation
    
    
    
}

struct WeatherInfo : Decodable{
    let main : String
    let icon : String
}

struct WeatherTemp : Decodable {
    let temp : Double
    let pressure : Int
    let humidity : Int
    
}

struct WeatherWind : Decodable {
    let speed : Double
}

struct WeatherLocation : Decodable {
    let country : String
}
