//
//  OrderTableViewController.swift
//  Realm-Todo
//
//  Created by Shirley on 2016-11-18.
//  Copyright © 2016 DuckLord. All rights reserved.
//

import UIKit
import RealmSwift

class OrderTableViewController: UITableViewController {
    var orders : Results<Order>!
    var order = Order?()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(animated: Bool) {
        loadOrders()
    }

    func loadOrders() {
        orders = uiRealm.objects(Order)
        tableView.reloadData()
    }

    @IBAction func addOrder(sender: UIBarButtonItem) {
        let orderStep1ViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("OrderStep1ViewController") as! OrderStep1ViewController
        order = Order()
        orderStep1ViewController.order = order
        navigationController?.pushViewController(orderStep1ViewController, animated: true)
//        try! uiRealm.write{
//            let newOrder = Order()
//            uiRealm.add(newOrder)
//            loadOrders()
//        }
    }

    // MARK: - Table view data source
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count;
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("orderCell", forIndexPath: indexPath)

        let order = orders[indexPath.row]

        let dateformatter = NSDateFormatter()
        dateformatter.dateStyle = NSDateFormatterStyle.ShortStyle
        dateformatter.timeStyle = NSDateFormatterStyle.ShortStyle

        cell.textLabel?.text = dateformatter.stringFromDate(order.createdAt)
        return cell
    }
}
