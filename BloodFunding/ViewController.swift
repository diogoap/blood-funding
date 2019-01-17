//
//  ViewController.swift
//  BloodFunding
//
//  Created by Diogo Augusto Pereira on 15/01/19.
//  Copyright © 2019 Diogo Augusto Pereira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        lblAmountToReceive.text = "R$ " + String(format: "%.2f", Transactions.donationsAmount)
        lblAmountContributed.text = "R$ " + String(format: "%.2f", Transactions.contributuionsAmount)
    }

    @IBOutlet weak var lblAmountToReceive: UILabel!
    
    @IBOutlet weak var lblAmountContributed: UILabel!
}

