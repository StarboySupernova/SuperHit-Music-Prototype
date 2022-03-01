//
//  ContentView.swift
//  SuperHit Music Prototype
//
//  Created by Simbarashe Dombodzvuku on 2/22/22.
//

import SwiftUI

struct ContentView: View {
    
    @SceneStorage("selectedTab") private var selectedTab = 1
    
    var body: some View {
        GeometryReader{ geometry in
            ZStack {
                VStack {
                    //I think only a VSTack will be sufficient for my needs
                    
                }
            }
        }
    }
}

extension ContentView {
    static var images: some View {
        ZStack {
            Image("blackartist")
                .resizedToFill(width: 100, height: 100)
                .clipShape(Circle())
                .offset(x: -88, y: 30)
            Image("guitarsinger")
                .resizedToFill(width: 40, height: 40)
                .clipShape(Circle())
                .offset(x: -54, y: -80)
            Image("eventmic")
                .resizedToFill(width: 20, height: 20)
                .clipShape(Circle())
                .offset(x: -44, y: -40)
            Image("singerandmic")
                .resizedToFill(width: 60, height: 60)
                .clipShape(Circle())
                .offset(x: -133, y: -60)
            Image("")
                .resizedToFill(width: 180, height: 180)
                .clipShape(Circle())
                .offset(x: 74)
            
        }
        .frame(maxWidth: .infinity, maxHeight: 220)
        .shadow(color: Color(.black), radius: 6, x: 5, y: 5)
        .padding(.top, 10)
        .padding(.leading, 20)
        .padding(.bottom, 10)
        //will need to change the measurements to use geometry values
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
