//
//  ArtistInformation.swift
//  SuperHit Music Prototype
//
//  Created by Simbarashe Dombodzvuku on 2/25/22.
//

import Foundation

struct ArtistInfo: Identifiable {
    var id = UUID()
    var featuredName: String? //something like top picks of the week. Remember to localize everything to French
    var countryName: String
    var artistName: String
    var imageName: String
}

