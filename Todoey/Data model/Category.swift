//
//  Category.swift
//  Todoey
//
//  Created by Janusz  on 10/04/2019.
//  Copyright © 2019 Janusz . All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    
    @objc dynamic var name: String = ""
    let items = List<Item>()
    
}
