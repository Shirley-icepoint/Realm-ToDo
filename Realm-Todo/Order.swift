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
    let dishes = [Dish(name: "鸭脖", enName: "Duck Neck", price:2.5 , unit: "一根"),
                  Dish(name: "鸭头", enName: "Duck Head", price:2.5 , unit: "一个"),
                  Dish(name: "鸭翅", enName: "Duck Wing", price:1.5 , unit: "一根"),
                  Dish(name: "鸭掌", enName: "Duck Feet", price:1.5 , unit: "一对"),
                  Dish(name: "鸭小腿", enName: "Duck Leg", price:1.0 , unit: "一根"),
                  Dish(name: "鸭舌", enName: "Duck Tongue", price:24.0 , unit: "半磅"),
                  Dish(name: "鸭胗", enName: "Duck Gizzard", price:8.0 , unit: "半磅"),
                  Dish(name: "鸭心", enName: "Duck Heart", price:8.0 , unit: "半磅"),
                  Dish(name: "鸭肝", enName: "Duck Liver", price:8.0 , unit: "半磅"),
                  Dish(name: "鸡脆骨", enName: "Chicken Gristle", price:10.0 , unit: "半磅"),
                  Dish(name: "鸡爪", enName: "Chicken Feet", price:1.5 , unit: "一对"),
                  Dish(name: "鸡架", enName: "Chicken Bone", price:3.0 , unit: "一份"),
                  Dish(name: "猪蹄", enName: "Pork Feet", price:1.0 , unit: "一块"),
                  Dish(name: "牛肉", enName: "Beef Tender", price:10.0 , unit: "半磅"),
                  Dish(name: "藕片", enName: "Lotus Root", price:3.0 , unit: "每份"),
                  Dish(name: "土豆", enName: "Potato", price:3.0 , unit: "每份"),
                  Dish(name: "海带丝", enName: "Seaweed", price:3.0 , unit: "每份"),
                  Dish(name: "花生", enName: "Peanut", price:3.0 , unit: "每份"),
                  Dish(name: "毛豆", enName: "Edamame", price:3.0 , unit: "每份"),
                  Dish(name: "豆腐丝", enName: "Bean Cured Skin", price:3.0 , unit: "每份"),
                  Dish(name: "腐竹", enName: "Linguee", price:3.0 , unit: "每份")]
}
