//
//  BloodDonateViewController.swift
//  BloodFunding
//
//  Created by Diogo Augusto Pereira on 16/01/19.
//  Copyright © 2019 Diogo Augusto Pereira. All rights reserved.
//

import UIKit

class BloodDonateViewController: UIViewController {
    
    @IBAction func btnCancel(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
