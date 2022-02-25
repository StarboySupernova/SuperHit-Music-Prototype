//
//  MainTabView.swift
//  SuperHit Music Prototype
//
//  Created by Simbarashe Dombodzvuku on 2/23/22.
//

import SwiftUI

struct MainTabView: View {
    
    @Binding var selectedTab: Int
    var artistName: String
    var songName: String
    var imageName: String
    var width: CGFloat?
    var height: CGFloat?
    
    var body: some View {
        ZStack {
            Image(imageName)
                .resizedToFill(width: width ?? .infinity, height: height ?? .infinity)
                .cornerRadius(50, corners: [.bottomRight]) //this will show when I use geometry reader
                .blur(radius: 1.25)
                .colorMultiply(.teal)
            VStack {
                Text(artistName)
                    .font(.largeTitle)
                    .fontWeight(.ultraLight)
                    .kerning(3)
                    .foregroundColor(.white)
                    .italic()
                    .multilineTextAlignment(.trailing)
                Text(songName)
                    .font(.headline)
                    .fontWeight(.heavy)
                    .kerning(2)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
            }
            .background(
                Color.black.opacity(0.3)
            )
            .cornerRadius(10, corners: [.topRight, .bottomLeft])
            .blendMode(.plusLighter)
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView(selectedTab: .constant(1), artistName: "Maissa Ilunga", songName: "Clochard d'amour", imageName: "blacksinger")
    }
}
