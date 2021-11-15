//
//  APICall.swift
//  Memer
//
//  Created by Kevin on 14/11/2021.
//  Copyright © 2021 kevinchrist. All rights reserved.
//

import Foundation
import Alamofire


class APICall: NSObject {
    private let baseUrl = "https://api.imgflip.com/get_memes"

    func getMemes(successCallback: @escaping (MemeResponse) -> Void, errorCallback: @escaping (String?) -> Void) {
        Session.default.request(baseUrl).responseDecodable(of: MemeResponse.self) { response in
            switch response.result {
                case .success(let memesResponse):
                    successCallback(memesResponse)
                case .failure(let error):
                errorCallback(error.errorDescription)
            }
        }
    }
}
