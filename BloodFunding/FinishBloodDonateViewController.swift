//
//  FinishBloodDonateViewController.swift
//  BloodFunding
//
//  Created by Diogo Augusto Pereira on 16/01/19.
//  Copyright © 2019 Diogo Augusto Pereira. All rights reserved.
//

import UIKit

class FinishBloodDonateViewController: UIViewController {
    
    @IBAction func btnFinish(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true);
    }
    
}
