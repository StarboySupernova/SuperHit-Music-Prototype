//
//  ImageDimensions.swift
//  SuperHit Music Prototype
//
//  Created by Simbarashe Dombodzvuku on 2/27/22.
//

import Foundation
import SwiftUI

/// Custom type to encapsulate the image dimensions
///   - properties :
///             - width : Image width
///             - height : Image height
///             - spacing: Spacing between images in a grid
// mainly so one can pass geometry readings in an Image
struct ImageDimensions {
    var width: CGFloat
    var height: CGFloat
    var spacing: CGFloat = 0
}

