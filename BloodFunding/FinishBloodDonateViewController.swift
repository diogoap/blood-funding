//
//  FinishBloodDonateViewController.swift
//  BloodFunding
//
//  Created by Diogo Augusto Pereira on 16/01/19.
//  Copyright © 2019 Diogo Augusto Pereira. All rights reserved.
//

import UIKit

class FinishBloodDonateViewController: UIViewController {
  
    static var amountReceived = NSDecimalNumber(integerLiteral: 0)
    
    @IBAction func btnFinish(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true);
    }
    
    @IBOutlet weak var lblValue: UILabel!
    
    override func viewDidLoad() {
        FinishBloodDonateViewController.amountReceived = Transactions.getAmoutToRecieve()
        lblValue.text = "R$ " + String(format: "%.2f", FinishBloodDonateViewController.amountReceived)
    }
    
}
