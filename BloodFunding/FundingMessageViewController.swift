//
//  FundingMessageViewController.swift
//  BloodFunding
//
//  Created by Ronaldo Radaieski Cunda on 16/01/19.
//  Copyright © 2019 Diogo Augusto Pereira. All rights reserved.
//

import UIKit

class FundingMessageViewController: UIViewController{
    
    var valor = NSDecimalNumber()

    @IBOutlet weak var labelValor: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if valor.decimalValue > 0 {
            
            labelValor.text = Transactions.formatValue(value: valor)
        }
    }
    
}
