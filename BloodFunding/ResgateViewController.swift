//
//  ResgateViewController.swift
//  BloodFunding
//
//  Created by Esmael Luiz Winter on 16/01/19.
//  Copyright © 2019 Diogo Augusto Pereira. All rights reserved.
//

import UIKit

class ResgateViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var bancoPicker: UIPickerView!
    @IBOutlet weak var txtValor: UITextField!
    
    let bancoPickerData = ["Banco do Brasil","Itaú", "Caixa Federal", "Santander"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bancoPicker.delegate = self
        bancoPicker.dataSource = self
        
        txtValor.text = String(describing: Transactions.getAmoutToRecieve())
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return bancoPickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return bancoPickerData[row]
    }
    
    @IBAction func btnCancelar(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnConfirmar(_ sender: Any) {
        Transactions.recieve()
    }
}
