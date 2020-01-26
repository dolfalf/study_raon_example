//
//  itemModel.swift
//  TestApplication
//
//  Created by jaeeun on 2020/01/26.
//  Copyright © 2020 archive-asia. All rights reserved.
//

import Foundation


class ItemModel {
    let imageName: String
    let title: String
    let desc: String
    
    init(imageName: String, title: String, desc: String) {
        self.imageName = imageName
        self.title = title
        self.desc = desc
    }
}
