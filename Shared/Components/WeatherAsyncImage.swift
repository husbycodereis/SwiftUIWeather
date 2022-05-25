//
//  WeatherAsyncImage.swift
//  SwittUIWeather (iOS)
//
//  Created by Ali Riza Reisoglu on 25.05.2022.
//

import SwiftUI

struct WeatherAsyncImage: View {
    var body: some View {
        AsyncImage(url: URL(string: "https://ak.picdn.net/shutterstock/videos/13064075/thumb/1.jpg")){ image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 350)
                .cornerRadius(20)
            
        } placeholder: {
            ProgressView()
        }
    }
}
