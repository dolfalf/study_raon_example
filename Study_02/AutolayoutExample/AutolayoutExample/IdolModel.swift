//
//  IdolModel.swift
//  AutolayoutExample
//
//  Created by jaeeun on 2020/02/08.
//  Copyright © 2020 archive-asia. All rights reserved.
//

import Foundation

struct IdolModel {
    
    let girlGroup : String
    let name : String
    let image : String
    
    init(_ item: [String:String]) {

        self.girlGroup = item["group_name"] ?? ""
        self.name = item["name"] ?? ""
        self.image = item["image"] ?? ""
    }
    
}
