//
//  WeatherViewModel.swift
//  ClearWeather
//
//  Created by Muharrem Köroğlu on 17.03.2023.
//

import Foundation

@MainActor //This keyword tells that the processes happening here will be on the main thread. If you use this keyword, you don't need to use DispatchQueue.main.async no matter what function you use.
class WeatherViewModel : ObservableObject {
    
    @Published var cityName : String = ""
    @Published var cityCountry : String = ""
    @Published var weatherDescription : String = ""
    @Published var weatherIcon : String = ""
    @Published var weatherTemperature : String = ""
    @Published var weatherPressure : String = ""
    @Published var weatherHumidity : String = ""
    @Published var weatherWind : String = ""
    
    let webService = WeatherWebService()
    
    
    func getWeatherConditionContinuation (url : URL) async{
        //This function is the one you should use when you use the function you want to make asynchronous with the fetchWeatherConditionContinuation() service function. It is a ViewModel function suitable for the MVVM structure.
        do{
            let weatherConditions = try await webService.fetchWeatherConditionContinuation(url: url)
            //After @MainActor 
            self.cityName = weatherConditions.name
            self.cityCountry = weatherConditions.sys.country
            self.weatherDescription = weatherConditions.weather.first?.main ?? "Data Not Found"
            self.weatherIcon = weatherConditions.weather.first?.icon ?? "Data Not Found"
            self.weatherTemperature = "\(Int(weatherConditions.main.temp.rounded()))°"
            self.weatherPressure = "\(weatherConditions.main.pressure) Pa"
            self.weatherHumidity = "\(weatherConditions.main.humidity) %"
            self.weatherWind = "\(weatherConditions.wind.speed) km/h"
            /*
            DispatchQueue.main.async {
                self.cityName = weatherConditions.name
                self.cityCountry = weatherConditions.sys.country
                self.weatherDescription = weatherConditions.weather.first?.main ?? "Data Not Found"
                self.weatherIcon = weatherConditions.weather.first?.icon ?? "Data Not Found"
                self.weatherTemperature = "\(Int(weatherConditions.main.temp.rounded()))°"
                self.weatherPressure = "\(weatherConditions.main.pressure) Pa"
                self.weatherHumidity = "\(weatherConditions.main.humidity) %"
                self.weatherWind = "\(weatherConditions.wind.speed) km/h"
            }
             */
        }catch{
            print("Something went wrong")
        }
    }

    
    /*
    func getWeatherConditionAsync (url : URL) async{
        //This function is the one you should use when you want to use the fetchWeatherConditionAsync() service function. It is an asynchronous ViewModel function suitable for MVVM structure.
        do {
            let weatherConditions = try await webService.fetchWeatherConditionAsync(url: url)
            DispatchQueue.main.async {
                DispatchQueue.main.async {
                    self.cityName = weatherConditions.name
                    self.cityCountry = weatherConditions.sys.country
                    self.weatherDescription = weatherConditions.weather.first?.main ?? "Data Not Found"
                    self.weatherIcon = weatherConditions.weather.first?.icon ?? "Data Not Found"
                    self.weatherTemperature = "\(Int(weatherConditions.main.temp.rounded()))°"
                    self.weatherPressure = "\(weatherConditions.main.pressure) Pa"
                    self.weatherHumidity = "\(weatherConditions.main.humidity) %"
                    self.weatherWind = "\(weatherConditions.wind.speed) km/h"
                }
            }
        }catch {
            print("Something went wrong")
        }
    }
     */
    
    
    
    /*
    func getWeatherCondition (url : URL) {
        //This function is used with the fetchWeatherCondition() service function. It is a ViewModel function suitable for the MVVM structure.
        webService.fetchWeatherCondition(url: url) { result in
            
            switch result {
                case .failure(let error):
                    print(error.localizedDescription)
                case.success(let conditions):
                if let weatherConditions = conditions {
                    DispatchQueue.main.async {
                        self.cityName = weatherConditions.name
                        self.cityCountry = weatherConditions.sys.country
                        self.weatherDescription = weatherConditions.weather.first?.main ?? "Data Not Found"
                        self.weatherIcon = weatherConditions.weather.first?.icon ?? "Data Not Found"
                        self.weatherTemperature = "\(Int(weatherConditions.main.temp.rounded()))°"
                        self.weatherPressure = "\(weatherConditions.main.pressure) Pa"
                        self.weatherHumidity = "\(weatherConditions.main.humidity) %"
                        self.weatherWind = "\(weatherConditions.wind.speed) km/h"
                    }
                }
            }
        }
    }
     */
}






