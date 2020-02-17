//
//  Repository.swift
//  WebAPISample
//
//  Created by P1506 on 2020/02/17.
//  Copyright © 2020 archive-asia. All rights reserved.
//

import Foundation

struct Repository : Decodable {
    let id: Int
    let name: String
    let fullName: String
    let owner: User
    
    enum CodingKeys : String, CodingKey {
        case id
        case name
        case fullName = "full_name"
        case owner
    }
}
