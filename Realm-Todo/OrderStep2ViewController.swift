//
//  OrderStep2ViewController.swift
//  Realm-Todo
//
//  Created by Shirley on 2016-11-22.
//  Copyright © 2016 DuckLord. All rights reserved.
//

import UIKit

class OrderStep2ViewController: UITableViewController {

    @IBOutlet weak var priceLabel: UILabel!

    var order: Order!
    var labels: [String] = [
        "Name",
        "Address",
        "Phone",
        "Message",
        "PayMethod",
        "Price",
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.Plain, target: self, action: #selector(OrderStep2ViewController.completeOrder))
    }

    func completeOrder() {
        try! uiRealm.write({
            uiRealm.add(order)
        })
        navigationController?.popToRootViewControllerAnimated(true)
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return labels.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if (indexPath.row == 6) {
            let cell = tableView.dequeueReusableCellWithIdentifier("priceTableViewCell", forIndexPath: indexPath) as! PriceTableViewCell
            cell.label.text = labels[indexPath.row]
            return cell
        } else {
            let cell = tableView.dequeueReusableCellWithIdentifier("textTableViewCell", forIndexPath: indexPath) as! TextTableViewCell
            cell.lable.text = labels[indexPath.row]
            return cell
        }
    }

}
