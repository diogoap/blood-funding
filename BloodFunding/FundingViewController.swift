//
//  FundingViewController.swift
//  BloodFunding
//
//  Created by Ronaldo Radaieski Cunda on 16/01/19.
//  Copyright © 2019 Diogo Augusto Pereira. All rights reserved.
//

import UIKit

class FundingViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate{
    
  
    @IBOutlet weak var pickerPagamento: UIPickerView!
    @IBOutlet weak var fieldValor: UITextField!
    
    var pagamentos: [String] = ["Cartão de Crédito", "Depósito Bancário"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerPagamento.delegate = self
        pickerPagamento.dataSource = self
        fieldValor.delegate = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pagamentos.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pagamentos[row]
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    
        /*
        let dots = fieldValor.text?.split(separator: ".").count
        
        if (dots > 1){
            return false
        }*/
        
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.destination is FundingMessageViewController){
            
            
        }
        
    }
}
