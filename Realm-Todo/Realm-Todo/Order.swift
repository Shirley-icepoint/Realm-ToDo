//
//  Order.swift
//  Realm-Todo
//
//  Created by Shirley on 2016-11-18.
//  Copyright © 2016 DuckLord. All rights reserved.
//

import Foundation
import Realm
import RealmSwift

class Order: Object {
    dynamic var createdAt = NSDate()
    dynamic var status = ""
    dynamic var price = 0
    dynamic var info: Info? = nil
    let dishes = [Dish(name: "鸭脖子", price: 2, number: 0)]
}
