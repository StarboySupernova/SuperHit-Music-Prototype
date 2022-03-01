//
//  MainLandingView.swift
//  SuperHit Music Prototype
//
//  Created by Simbarashe Dombodzvuku on 2/24/22.
//

import SwiftUI

struct MainLandingView: View {
    
    var imageDimensions: ImageDimensions
    var artist: [ArtistInfo]
    
    //    var columns: [GridItem] {
    //        [GridItem(.adaptive(minimum: imageDimensions.width, maximum: imageDimensions.height))]
    //    }
    
    var columns: [GridItem] {
        [
            GridItem(.flexible(minimum: imageDimensions.width, maximum: imageDimensions.width)),
            GridItem(.flexible(minimum: imageDimensions.width, maximum: imageDimensions.width)),
            GridItem(.flexible(minimum: imageDimensions.width, maximum: imageDimensions.width))
        ]
    }
    
    
    var body: some View {
        
        ScrollView {
            LazyVGrid(columns:columns, spacing: imageDimensions.spacing) {
                ForEach(0..<artist.count, id: \.self) { index in
                    HStack {
                        VStack {
                            
                            Text(artist[index].countryName)
                                .font(.headline)
                                .fontWeight(.medium)
                                .kerning(2)
                                .foregroundColor(.white)
                            
                            Image(artist[index].imageName)
                                .resizedToFill(width: imageDimensions.width,
                                               height: imageDimensions.height)
                                .cornerRadius(5, corners: [.topRight, .bottomLeft])
                            
                            Text(artist[index].artistName)
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .kerning(2)
                                .foregroundColor(.white)
                            
                        }
                    }
                }
            }
        }
    }
    
}

struct MainLandingView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            MainLandingView(imageDimensions: ImageDimensions(width: geometry.size.width * 0.2, height: geometry.size.width * 0.2, spacing: geometry.size.width * 0.1), artist: [ArtistInfo(countryName: "Madagascar", artistName: "Maissa Ilunga", imageName: "blacksinger"), ArtistInfo(countryName: "D.R. Congo", artistName: "Nicolas Rodrigue Pidouche Offinobi", imageName: "blackartist"), ArtistInfo(countryName: "Burkina Faso", artistName: "Victoire Douniama", imageName: "blacksinger"), ArtistInfo(countryName: "Benin", artistName: "Tchiana Tchicou-Pembey", imageName: "blackartist")])
                .background(Color.blue)
        }
    }
}
