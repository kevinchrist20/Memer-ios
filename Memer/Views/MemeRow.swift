//
//  MemeRow.swift
//  Memer
//
//  Created by Kevin on 15/11/2021.
//  Copyright © 2021 kevinchrist. All rights reserved.
//

import SwiftUI
import Foundation

struct MemeRow: View {
    var meme: Meme
    
    var body: some View {
        NavigationLink(destination: MemeDetail(meme: meme), label: {
            VStack {
                ImageViewContainer(imageUrl: meme.url)
                Text(meme.name)
                Spacer()
            }
            .frame(minWidth: 0,
                   maxWidth: .infinity,
                   minHeight: 0,
                   maxHeight: 200,
                   alignment: .topLeading
            )
            .clipped()
            .cornerRadius(10)
            .shadow(radius: 10)
            .padding()
        })
    }
}

//struct MemeRow_Previews: PreviewProvider {
//    static var previews: some View {
//        MemeRow()
//    }
//}
