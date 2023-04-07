//
//  ContentView.swift
//  WeatherApp
//
//  Created by Bereket Kibret on 4/6/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
            VStack() {
                Text("Los Angeles, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 8){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 40)
                
                
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeek: "MON", imageName: "cloud.sun.fill", temp: 76)
                    WeatherDayView(dayOfWeek: "TUES", imageName: "sun.max.fill", temp: 85)
                    WeatherDayView(dayOfWeek: "WED", imageName: "wind", temp: 64)
                    WeatherDayView(dayOfWeek: "THUR", imageName: "cloud.sun.fill", temp: 75)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", temp: 71)
                }
                Spacer()
                
                Button {
                    print("Tapped")
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(10)
                }
                
                Spacer()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    var dayOfWeek : String
    var imageName : String
    var temp : Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temp)")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
