//
//  FundingMessageViewController.swift
//  BloodFunding
//
//  Created by Ronaldo Radaieski Cunda on 16/01/19.
//  Copyright © 2019 Diogo Augusto Pereira. All rights reserved.
//

import UIKit

class FundingMessageViewController: UIViewController{
    
    var valor: String = ""

    @IBOutlet weak var labelValor: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (!valor.isEmpty){
            
            labelValor.text = "R$ " + valor
        
        }
    }
    
}
