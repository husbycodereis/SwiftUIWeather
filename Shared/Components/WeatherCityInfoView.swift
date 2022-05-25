//
//  WeatherCityInfoView.swift
//  SwittUIWeather (iOS)
//
//  Created by Ali Riza Reisoglu on 25.05.2022.
//

import SwiftUI

struct WeatherCityInfoView: View {
    var weather: ResponseBody
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            Text(weather.name)
                .bold().font(.title)
            Text("Today, \(Date().formatted(.dateTime.month().day().hour().minute()))")
                .fontWeight(.light)
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}
