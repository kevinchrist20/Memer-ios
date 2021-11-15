//
//  MemeList.swift
//  Memer
//
//  Created by Kevin on 15/11/2021.
//  Copyright © 2021 kevinchrist. All rights reserved.
//

import SwiftUI

struct MemeList: View {
    @ObservedObject private(set) var viewModel: MemeViewModel
    var body: some View {
        NavigationView {
            loadMemesView()
            .navigationBarTitle("Memes")
        }
    }
    
    private func loadMemesView() -> AnyView {
        switch viewModel.apiCallState {
        case .loading:
            return AnyView(Text("Loading...").multilineTextAlignment(.center))
        case .success(let memeResponse):
            return AnyView(List(memeResponse.data.meme, id: \.id) { meme in
                MemeRow(meme: meme)
            })
        case .error(let errorMsg):
            return AnyView(Text(errorMsg).multilineTextAlignment(.center))
        }
    }
}


//struct MemeList_Previews: PreviewProvider {
//    static var previews: some View {
//        MemeList()
//    }
//}
