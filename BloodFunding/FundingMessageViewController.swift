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
    
    @IBOutlet weak var labelMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (!valor.isEmpty){
        
            labelMessage.text = "Você contribuiu com R$" + valor + " para a campanha de doação de sangue."
        }
    }
    
}
