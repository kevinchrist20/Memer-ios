//
//  State.swift
//  Memer
//
//  Created by Kevin on 14/11/2021.
//  Copyright © 2021 kevinchrist. All rights reserved.
//

import Foundation

enum State {
    case loading
    case success(MemeResponse)
    case error(String)
}
