//
//  Info.swift
//  Realm-Todo
//
//  Created by Shirley on 2016-11-23.
//  Copyright © 2016 DuckLord. All rights reserved.
//

import Foundation
import RealmSwift

class Info: Object {
    dynamic var name = ""
    dynamic var address = ""
    dynamic var phone = ""
    dynamic var message = ""
    dynamic var payMethod = ""

    convenience required init(name: String, address: String, phone: String, message: String, payMethod: String) {
        self.init()
        self.name = name
        self.address = address
        self.phone = phone
        self.message = message
        self.payMethod = payMethod
    }
}
