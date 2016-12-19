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
    dynamic var enName = ""
    dynamic var price = 0.0
    dynamic var unit = ""
    dynamic var number = 0

    convenience init(name: String, enName: String, price: Double, unit: String) {
        self.init()
        self.name = name
        self.enName = enName
        self.price = price
        self.unit = unit
        self.number = 0
    }
}
