//
//  DishTableViewCell.swift
//  Realm-Todo
//
//  Created by Shirley on 2016-11-21.
//  Copyright © 2016 DuckLord. All rights reserved.
//

import UIKit

class DishTableViewCell: UITableViewCell {
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var stepper: UIStepper!

    @IBAction func stepperValueChanged(sender: AnyObject) {
        number.text = String(Int(stepper.value))
    }
}

