//
//  ImageViewContainer.swift
//  Memer
//
//  Created by Kevin on 15/11/2021.
//  Copyright © 2021 kevinchrist. All rights reserved.
//

import SwiftUI

struct ImageViewContainer: View {
    @ObservedObject private(set) var remoteImageLoader: RemoteImageLoader

    init(imageUrl: String) {
        remoteImageLoader = RemoteImageLoader(imageURL: imageUrl)
    }
    
    var body: some View {
        Image(uiImage: (remoteImageLoader.data.isEmpty) ? UIImage(imageLiteralResourceName: "placeholder") : UIImage(data: remoteImageLoader.data)!)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(height: 200, alignment: .center)
    }
}

//struct ImageViewContainer_Previews: PreviewProvider {
//    static var previews: some View {
//        ImageViewContainer()
//    }
//}
