//
//  WeatherWebService.swift
//  ClearWeather
//
//  Created by Muharrem Köroğlu on 17.03.2023.
//

import Foundation


class WeatherWebService {
    
    /*
    func fetchWeatherConditionAsync (url : URL) async throws -> WeatherModel{
        //This function shows how async await keywords should be used in a function and how to make a function asynchronous. If you don't want to use the Continuation function, you can use it alone.
        let (data, _ ) = try await URLSession.shared.data(from: url)
        
        let weatherConditions = try? JSONDecoder().decode(WeatherModel.self, from: data)
        
        return weatherConditions!
    }
     */
    
    func fetchWeatherConditionContinuation (url : URL) async throws -> WeatherModel{
        //This function is used to make asynchronous functions that are not normally asynchronous.
        try await withCheckedThrowingContinuation { continuation in
            fetchWeatherCondition(url: url) { result in
                switch result {
                case .failure(let error):
                    continuation.resume(throwing: error)
                case .success(let weatherConditions):
                    continuation.resume(returning: weatherConditions!)
                }
            }
        }
    }
    
    func fetchWeatherCondition (url : URL, completion : @escaping (Result<WeatherModel?,ErrorType>) -> Void) {
        //This function is a function that you can use when you receive data from the internet under normal conditions.
        URLSession.shared.dataTask(with: url) { data, _, error in
            
            if error != nil {
                print(error?.localizedDescription ?? "Something went wrong")
                completion(.failure(.URLisNotCorrect))
            }
            guard let data = data, error == nil else {
                return completion(.failure(.DidntFetchData))
            }
            do{
                let weatherConditions = try JSONDecoder().decode(WeatherModel.self, from: data)
                completion(.success(weatherConditions))
            }catch {
                return completion(.failure(.DidntParseData))
            }
              
        }.resume()
        
    }
     
    
}

enum ErrorType : Error {
    case URLisNotCorrect
    case DidntFetchData
    case DidntParseData
}
