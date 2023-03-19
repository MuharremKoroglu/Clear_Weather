//
//  ContentView.swift
//  ClearWeather
//
//  Created by Muharrem Köroğlu on 17.03.2023.
//

import SwiftUI

struct WeatherHomeView: View {
    
   @ObservedObject var weatherViewModel = WeatherViewModel()
    
    @State var cityName = "Istanbul"
    
    var body: some View {
        ZStack{
                Color.black
                .ignoresSafeArea()
            VStack{
                HStack{
                    Text("Clear Weather")
                        .font(.system(size: 40))
                        .foregroundColor(.white)
                        .padding(.horizontal, 15)
                        
                    Spacer()
                    Button {
                        //weatherViewModel.getWeatherCondition(url: URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(cityName)&appid=2b4401523341f390cf511fd70ae23c1a&units=metric")!)
                        Task{
                            cityName = "Istanbul"
                            await weatherViewModel.getWeatherConditionContinuation(url: URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(cityName)&appid=2b4401523341f390cf511fd70ae23c1a&units=metric")!)
                            //await weatherViewModel.getWeatherConditionAsync(url: URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(cityName)&appid=2b4401523341f390cf511fd70ae23c1a&units=metric")!)
                        }
                    } label: {
                        Image(systemName: "arrow.counterclockwise")
                            .resizable()
                            .frame(width: 25,height: 30)
                            .foregroundColor(.white)
                    }.padding(.horizontal, 25)
                }
                    VStack {
                        AsyncImage(url: URL(string: "https://openweathermap.org/img/wn/\(weatherViewModel.weatherIcon)@2x.png")) { Image in
                            Image.resizable()
                                .frame(width:150, height: 150)
                        } placeholder: {
                            ProgressView()
                        }

                    HStack{
                        Text(weatherViewModel.cityName)
                            .font(.largeTitle)
                            .frame(alignment: .center)
                            .foregroundColor(.white)
                       
                        Text("/ " + weatherViewModel.cityCountry)
                            .font(.largeTitle)
                            .frame(alignment: .center)
                            .foregroundColor(.white)
                            
                    }
                    Text(weatherViewModel.weatherTemperature)
                        .font(.system(size: 50))
                        .foregroundColor(.white)
                        .frame(alignment: .center)
                    Text(weatherViewModel.weatherDescription)
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .frame(alignment: .center)
                        .padding(.bottom,30)
                    
                    HStack{
                        Spacer()
                        VStack{
                            Image(systemName: "wind")
                                .resizable()
                                .foregroundColor(.white)
                                .frame(width: 40, height: 40)
                            Text(weatherViewModel.weatherWind)
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                        }
                        Spacer()
                        VStack{
                            Image(systemName: "humidity")
                                .resizable()
                                .foregroundColor(.white)
                                .frame(width: 50, height: 40)
                            Text(weatherViewModel.weatherHumidity)
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                        }
                        Spacer()
                        VStack{
                            Image(systemName: "aqi.medium")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.white)
                            Text(weatherViewModel.weatherPressure)
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                        }
                        Spacer()
                    }.padding(.bottom,50)
                        
                        VStack{
                            //When running a non-asynchronous function on the buttons, for example getWeatherCondition() ViewModel, the function can be assigned to the button as a normal action. However, when we want to use an asynchronous function, such as the ViewModel functions like getWeatherConditionAsync() and getWeatherConditionContinuation(), we should use the Task structure.
                            Button {
                                //weatherViewModel.getWeatherCondition(url: URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(cityName)&appid=2b4401523341f390cf511fd70ae23c1a&units=metric")!)
                                Task{
                                    cityName = "Berlin"
                                    await weatherViewModel.getWeatherConditionContinuation(url: URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(cityName)&appid=2b4401523341f390cf511fd70ae23c1a&units=metric")!)
                                    //await weatherViewModel.getWeatherConditionAsync(url: URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(cityName)&appid=2b4401523341f390cf511fd70ae23c1a&units=metric")!)
                                }
                               
                            } label: {
                                Text("Berlin")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                                    .frame(maxWidth: .infinity)
                            }.buttonStyle(.bordered)
                                .background(.gray)
                                .cornerRadius(10)
                                .frame(maxWidth: .infinity)
                                .padding(.horizontal, 40)
                            Spacer()
                            Button {
                                //weatherViewModel.getWeatherCondition(url: URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(cityName)&appid=2b4401523341f390cf511fd70ae23c1a&units=metric")!)
                                Task{
                                    cityName = "Tokyo"
                                    await weatherViewModel.getWeatherConditionContinuation(url: URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(cityName)&appid=2b4401523341f390cf511fd70ae23c1a&units=metric")!)
                                    //await weatherViewModel.getWeatherConditionAsync(url: URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(cityName)&appid=2b4401523341f390cf511fd70ae23c1a&units=metric")!)
                                }
                            } label: {
                                Text("Tokyo")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                                    .frame(maxWidth: .infinity)

                            }.buttonStyle(.bordered)
                                .background(.gray)
                                .cornerRadius(10)
                                .frame(maxWidth: .infinity)
                                .padding(.horizontal, 40)

                            Spacer()
                            Button {
                                //weatherViewModel.getWeatherCondition(url: URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(cityName)&appid=2b4401523341f390cf511fd70ae23c1a&units=metric")!)
                                Task{
                                    cityName = "Washington"
                                    await weatherViewModel.getWeatherConditionContinuation(url: URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(cityName)&appid=2b4401523341f390cf511fd70ae23c1a&units=metric")!)
                                    //await weatherViewModel.getWeatherConditionAsync(url: URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(cityName)&appid=2b4401523341f390cf511fd70ae23c1a&units=metric")!)
                                }
                            } label: {
                                Text("Washington")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                                    .frame(maxWidth: .infinity)

                            }.buttonStyle(.bordered)
                                .background(.gray)
                                .cornerRadius(10)
                                .frame(maxWidth: .infinity)
                                .padding(.horizontal, 40)
 
                            Spacer()
                        }
                        Spacer()
                }
            }}.task {
                //This method works when the application is opened, just like the onAppear method. However, this method is used with functions to be executed asynchronously. So when you want to use the getWeatherConditionAsync() and getWeatherConditionContinuation() ViewModel functions, you should use this method.
                await weatherViewModel.getWeatherConditionContinuation(url: URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(cityName)&appid=2b4401523341f390cf511fd70ae23c1a&units=metric")!)
                
                //await weatherViewModel.getWeatherConditionAsync(url: URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(cityName)&appid=2b4401523341f390cf511fd70ae23c1a&units=metric")!)
            }
        
        /*
        .onAppear(){
         //This method works when the application is first opened. It is not asynchronous. That's why getWeatherCondition() can be used with the ViewModel function.
                   weatherViewModel.getWeatherCondition(url: URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(cityName)&appid=2b4401523341f390cf511fd70ae23c1a&units=metric")!)
         }
         */
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherHomeView()
    }
}
