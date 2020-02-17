//
//  HTTPMethod.swift
//  WebAPISample
//
//  Created by P1506 on 2020/02/17.
//  Copyright © 2020 archive-asia. All rights reserved.
//

import Foundation

enum HTTPMethod : String {
    case get        = "GET"
    case post       = "POST"
    case put        = "PUT"
    case head       = "HEAD"
    case delete     = "DELETE"
    case patch      = "PATCH"
    case trace      = "TRACE"
    case options    = "OPTIONS"
    case connect    = "CONNECT"
}
