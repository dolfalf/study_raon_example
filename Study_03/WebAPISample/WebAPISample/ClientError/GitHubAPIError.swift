//
//  GitHubAPIError.swift
//  WebAPISample
//
//  Created by P1506 on 2020/02/17.
//  Copyright © 2020 archive-asia. All rights reserved.
//

import Foundation

struct GitHubAPIError : Decodable, Error {
    
    struct FieldError : Decodable {
        let resource: String
        let field: String
        let code: String
    }
    
    let message: String
    let fieldErrors: [FieldError]
}
