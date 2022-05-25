//
//  WeatherFeelsLike.swift
//  SwittUIWeather (iOS)
//
//  Created by Ali Riza Reisoglu on 25.05.2022.
//

import SwiftUI

struct WeatherFeelsLike: View {
    var weather: ResponseBody
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing: 20) {
                Image(systemName: "sun.max")
                    .font(.system(size: 40))
                Text(weather.weather[0].main)
            }
            .frame(width: 150, alignment: .leading)
            Spacer()
            Text(weather.main.feelsLike.roundDouble() + "°")
                .font(.system(size: 100))
                .fontWeight(.bold)
              
        }
    }
}
