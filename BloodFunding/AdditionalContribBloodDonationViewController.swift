//
//  AdditionalContribBloodDonationViewController.swift
//  BloodFunding
//
//  Created by Diogo Augusto Pereira on 16/01/19.
//  Copyright © 2019 Diogo Augusto Pereira. All rights reserved.
//

import UIKit

class AdditionalContribBloodDonationViewController: UIViewController {
    
    @IBAction func btnFinish(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true);
    }
    
    @IBOutlet weak var lblValue: UILabel!
    
    override func viewDidLoad() {
        lblValue.text = Transactions.formatValue(value: FinishBloodDonateViewController.amountReceived)
    }
}
