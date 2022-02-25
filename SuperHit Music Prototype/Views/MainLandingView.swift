//
//  MainLandingView.swift
//  SuperHit Music Prototype
//
//  Created by Simbarashe Dombodzvuku on 2/24/22.
//

import SwiftUI

struct MainLandingView: View {
    
    var imageDimensions: Image.ImageDimensions
    var artist: [ArtistInfo]
    
    var body: some View {
        ForEach(0 ..< artist.count, id: \.self) { index in
            VStack {
                HStack {
                    Text(artist[index].countryName)
                        .font(.headline)
                        .fontWeight(.medium)
                        .kerning(2)
                        .foregroundColor(.white)
                }
                
                HStack {
                    Image(artist[index].imageName)
                        .resizedToFill(width: imageDimensions.width,
                                       height: imageDimensions.height)
                        .cornerRadius(10, corners: [.topRight, .bottomLeft])
                }
                
                HStack {
                    Text(artist[index].artistName)
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .kerning(2)
                        .foregroundColor(.white)
                }
                
            }
        }
    }
    
    struct ArtistInfo: Identifiable {
        var id = UUID()
        var featuredName: String? //something like top picks of the week. Remember to localize everything to French
        var countryName: String
        var artistName: String
        var imageName: String
    }
}

struct MainLandingView_Previews: PreviewProvider {
    static var previews: some View {
        MainLandingView()
    }
}
