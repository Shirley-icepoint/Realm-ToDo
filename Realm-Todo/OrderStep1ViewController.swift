//
//  OrderStep1ViewController.swift
//  Realm-Todo
//
//  Created by Shirley on 2016-11-21.
//  Copyright © 2016 DuckLord. All rights reserved.
//

import UIKit
import RealmSwift

class OrderStep1ViewController: UITableViewController {
    var order: Order!

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: UIBarButtonItemStyle.Plain, target: self, action: #selector(OrderStep1ViewController.goToStep2))
    }

    func goToStep2() {
        let orderStep2ViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("OrderStep2ViewController") as! OrderStep2ViewController
        orderStep2ViewController.order = order
        for i in 0..<order.dishes.count {
            let cell = tableView.cellForRowAtIndexPath(NSIndexPath(forRow: i, inSection: 0)) as! DishTableViewCell

            order.dishes[i].number = Int(cell.number.text!)!
        }
        navigationController?.pushViewController(orderStep2ViewController, animated: true)
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return order.dishes.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("dishCell", forIndexPath: indexPath) as! DishTableViewCell
        let dish = order.dishes[indexPath.row]

        cell.name.text = dish.name
        cell.price.text = "$" + String(dish.price)
        cell.number.text = String(dish.number)
        cell.stepper.value = Double(dish.number)

        return cell
    }
}
