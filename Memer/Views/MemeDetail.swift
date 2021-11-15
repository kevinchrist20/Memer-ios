//
//  MemeDetail.swift
//  Memer
//
//  Created by Kevin on 15/11/2021.
//  Copyright © 2021 kevinchrist. All rights reserved.
//

import SwiftUI

struct MemeDetail: View {
    var meme: Meme
    var body: some View {
        Text(meme.name)
    }
}

//struct MemeDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        MemeDetail()
//    }
//}
