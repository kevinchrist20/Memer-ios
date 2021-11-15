//
//  RemoteImageLoader.swift
//  Memer
//
//  Created by Kevin on 15/11/2021.
//  Copyright © 2021 kevinchrist. All rights reserved.
//

import Foundation


class RemoteImageLoader: ObservableObject {
    @Published var data = Data()
    
    init(imageURL: String) {
        guard let url = URL(string: imageURL) else { return }
        
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else { return }
            
            DispatchQueue.main.async {
                self.data = data
            }
        }.resume()
    }
}
