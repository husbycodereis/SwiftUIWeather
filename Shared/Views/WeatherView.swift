//
//  WeatherView.swift
//  SwittUIWeather (iOS)
//
//  Created by Ali Riza Reisoglu on 25.05.2022.
//

import SwiftUI

struct WeatherView: View {
    var weather: ResponseBody
    var body: some View {
        ZStack(alignment: .leading) {
            VStack{
                WeatherCityInfoView(weather: weather)
                WeatherFeelsLike(weather: weather)
                Spacer()
                    .frame(height: 80)
                WeatherAsyncImage()
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .padding()
            WeatherPanel(weather: weather)
        }
        .edgesIgnoringSafeArea(.bottom)
        .background(Color(hue: 0.65, saturation: 0.78, brightness: 0.354))
        .preferredColorScheme(.dark)
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}
