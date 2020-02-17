//
//  GitHubClientError.swift
//  WebAPISample
//
//  Created by P1506 on 2020/02/17.
//  Copyright © 2020 archive-asia. All rights reserved.
//

import Foundation

enum GitHubClientError : Error {
    case connectionError(Error)
    case responseParseError(Error)
    case apiError(GitHubAPIError)
}
