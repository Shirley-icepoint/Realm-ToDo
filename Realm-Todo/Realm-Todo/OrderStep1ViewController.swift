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
    var dishes: Results<Dish>!

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var price: UITextField!
    @IBOutlet weak var number: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: UIBarButtonItemStyle.Plain, target: self, action: #selector(OrderStep1ViewController.goToStep2))

        try! uiRealm.write{
            let dish = Dish()
            dish.name = "sample"
            uiRealm.add(dish)
        }

        dishes = uiRealm.objects(Dish)

    }

    func goToStep2() {
        let orderStep2ViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("OrderStep2ViewController") as! OrderStep2ViewController
        navigationController?.pushViewController(orderStep2ViewController, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishes.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("dishCell", forIndexPath: indexPath) as! DishTableViewCell
        let dish = dishes[indexPath.row]

        cell.name.text = dish.name
        cell.price.text = "$" + String(dish.price)
        cell.number.text = String(dish.number)
        cell.stepper.value = Double(dish.number)

        return cell
    }
}
