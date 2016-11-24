//
//  OrderStep2ViewController.swift
//  Realm-Todo
//
//  Created by Shirley on 2016-11-22.
//  Copyright © 2016 DuckLord. All rights reserved.
//

import UIKit

class OrderStep2ViewController: UITableViewController {

    @IBOutlet weak var priceCell: UITableViewCell!
    @IBOutlet weak var nameCell: UITableViewCell!

    var order: Order!

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.Plain, target: self, action: #selector(OrderStep2ViewController.completeOrder))
    }

    func completeOrder() {

    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var identifier: String
        switch indexPath.row {
        case 0 :
            identifier = "nameCell"
        case 1:
            identifier = "addressCell"
        case 2:
            identifier = "phoneCell"
        case 3:
            identifier = "messageCell"
        case 4:
            identifier = "payCell"
        default:
            identifier = "priceCell"
        }

        let cell = tableView.dequeueReusableCellWithIdentifier(identifier, forIndexPath: indexPath)
        return cell
    }

}
