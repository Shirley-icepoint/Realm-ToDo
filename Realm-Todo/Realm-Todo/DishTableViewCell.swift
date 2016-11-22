//
//  DishTableViewCell.swift
//  Realm-Todo
//
//  Created by Shirley on 2016-11-21.
//  Copyright © 2016 DuckLord. All rights reserved.
//

import UIKit

class DishTableViewCell: UITableViewCell {
    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var price: UITextField!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var stepper: UIStepper!

    @IBAction func stepperValueChanged(sender: AnyObject) {
        number.text = String(Int(stepper.value))
    }
}

