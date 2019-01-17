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
    
    let bancoPickerData = ["Banco do Brasil","Itaú", "Caixa Federal", "Santander"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bancoPicker.delegate = self
        bancoPicker.dataSource = self
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
}
