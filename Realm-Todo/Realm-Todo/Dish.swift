//
//  Dish.swift
//  Realm-Todo
//
//  Created by Shirley on 2016-11-21.
//  Copyright © 2016 DuckLord. All rights reserved.
//

import Foundation
import RealmSwift

class Dish: Object {
    dynamic var name = ""
    dynamic var price = 0
    dynamic var number = 0

    convenience init(name: String, price: Int, number: Int) {
        self.init()
        self.name = name
        self.price = price
        self.number = number
    }
}
