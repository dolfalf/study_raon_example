//
//  Result.swift
//  WebAPISample
//
//  Created by P1506 on 2020/02/17.
//  Copyright © 2020 archive-asia. All rights reserved.
//

import Foundation

enum Result<T, Error : Swift.Error> {
    case success(T)
    case failure(Error)
    
    init(value: T) {
        self = .success(value)
    }
    
    init(error: Error) {
        self = .failure(error)
    }
}
