//
//  ExtensionOnImage.swift
//  SuperHit Music Prototype
//
//  Created by Simbarashe Dombodzvuku on 2/22/22.
//

import Foundation
import SwiftUI

extension Image {
    /// Resize an image with fill aspect ratio and specified frame dimensions.
    ///   - parameters:
    ///     - width: Frame width.
    ///     - height: Frame height.
    func resizedToFill(width: CGFloat, height: CGFloat) -> some View {
        self
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: width, height: height)
    }
    
    /// Custom type to encapsulate the image dimensions
    ///   - properties :
    ///             - width : Image width
    ///             - height : Image height
    // mainly so one can pass geometry readings in an Image
    struct ImageDimensions {
        var width: CGFloat
        var height: CGFloat
    }
}
// will come back to experiment more with writing parsable documentation
