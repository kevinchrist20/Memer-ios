//
//  MemeResponse.swift
//  Memer
//
//  Created by Kevin on 14/11/2021.
//  Copyright © 2021 kevinchrist. All rights reserved.
//

import Foundation

struct MemeResponse: Decodable {
    let success: Bool
    let data: MemeData
}

struct MemeData: Decodable {
    let meme: [Meme]
    
    enum CodingKeys: String, CodingKey {
        case meme = "memes"
    }
}
