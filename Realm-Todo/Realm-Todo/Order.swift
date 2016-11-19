//
//  Order.swift
//  Realm-Todo
//
//  Created by Shirley on 2016-11-18.
//  Copyright © 2016 DuckLord. All rights reserved.
//

import Foundation
import RealmSwift

class Order: Object {
    dynamic var createdAt = NSDate()
    dynamic var status = ""
    dynamic var price = 0
}
