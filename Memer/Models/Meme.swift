//
//  Meme.swift
//  Memer
//
//  Created by Kevin on 14/11/2021.
//  Copyright © 2021 kevinchrist. All rights reserved.
//

import Foundation
struct Meme: Identifiable {
    let id, name: String
    let url: String
    let width, height, boxCount: Int
}

extension Meme: Decodable {
    enum CodingKeys: String, CodingKey {
        case id, name, url, width, height
        case boxCount = "box_count"
    }
}
