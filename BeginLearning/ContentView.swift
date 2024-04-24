//
//  ContentView.swift
//  BeginLearning
//
//  Created by Rahul Patel on 2024-04-22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack{
          
            BackgroundView(isNight: isNight)
            
            VStack{
                CityTextView(cityName: "Cupertino, CA")
                
                let image = isNight ? "cloud.moon.fill" : "cloud.sun.fill"
                
                MainWeatherView(imageName: image, temprature: 76)
                HStack(spacing:10){
                    WeatherDayView(dayOfWeek: "Tue", imageName: "cloud.sun.fill", temprature: 74)
                    WeatherDayView(dayOfWeek: "Wed", imageName: "cloud.bolt.rain.fill", temprature: 80)
                    WeatherDayView(dayOfWeek: "Thur", imageName: "cloud.sleet.fill", temprature: 85)
                    WeatherDayView(dayOfWeek: "Fri", imageName: "cloud.sun.rain.fill", temprature: 90)
                    WeatherDayView(dayOfWeek: "Sat", imageName: "cloud.moon.rain.fill", temprature: 60)
                    WeatherDayView(dayOfWeek: "Sun", imageName: "cloud.heavyrain.fill", temprature: 76)
                    WeatherDayView(dayOfWeek: "Mon", imageName: "cloud.snow.fill", temprature: 87)
                }
                Spacer()

                Button{
                    isNight.toggle()
                }label: {
                    WeatherChangeDayButton(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
                }
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var dayOfWeek:String
    var imageName:String
    var temprature:Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 18,weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(
                    width: 40,
                    height: 40
                )
            Text("\(temprature)°")
                .font(.system(size: 18,weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct MainWeatherView: View {
    var imageName:String
    var temprature:Int
    
    var body: some View {
        VStack(spacing:10){
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180,height: 180)
            Text("\(temprature)°")
                .font(
                    .system(
                        size: 70,
                        weight: .medium
                    )
                )
                .foregroundColor(.white)
            
        }
        .padding(.bottom,50)
    }
}

struct BackgroundView: View {
    
    var isNight:Bool
    
    var body: some View {
        
        let topColor : Color = (isNight ? .black : .blue)
        let bottomColor : Color = (isNight ? .gray : Color("lightBlue"))
        
        
        if #available(iOS 16.0, *) {
            ContainerRelativeShape()
                .fill(isNight ? Color.black.gradient : Color.blue.gradient)
                .ignoresSafeArea()
        } else {
            LinearGradient(
                gradient: Gradient(
                    colors: [topColor,bottomColor]
                ),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        }
    }
}


struct CityTextView:View {
    var cityName:String
    var body: some View{
        Text(cityName)
            .font(
                .system(size: 32,weight: .medium,design: .default)
            )
            .foregroundColor(.white)
            .padding()

    }
}
