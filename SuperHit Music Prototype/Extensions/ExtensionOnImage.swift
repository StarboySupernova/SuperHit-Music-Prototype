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
    
}
// will come back to experiment more with writing parsable documentation
