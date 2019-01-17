//
//  ProfileViewController.swift
//  BloodFunding
//
//  Created by Ronaldo Radaieski Cunda on 17/01/19.
//  Copyright © 2019 Diogo Augusto Pereira. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController{
    
    @IBOutlet weak var fieldNome: UITextField!
    @IBOutlet weak var fieldSobrenome: UITextField!
    @IBOutlet weak var fieldCPF: UITextField!
    @IBOutlet weak var fieldData: UIDatePicker!
    @IBOutlet weak var buttonSalvar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        let defaults = UserDefaults.standard
        
        if (defaults.object(forKey: "UserProfile") != nil){
            
            let userProfile = defaults.object(forKey: "UserProfile") as! UserProfile
            
            fieldNome.text = userProfile.nome
            fieldSobrenome.text = userProfile.sobrenome
            fieldCPF.text = userProfile.cpf
            fieldData.date = userProfile.dataNascimento
            
        }*/

    }
    
    @IBAction func buttonSalvar(_ sender: Any) {
        
        /*
        let defaults = UserDefaults.standard

        let userProfile = UserProfile(
            nome: fieldNome.text!,
            sobrenome: fieldSobrenome.text!,
            cpf: fieldCPF.text!,
            data: fieldData.date)
        
        defaults.set([userProfile], forKey: "UserProfile")
        */
        
        let alert = UIAlertController(title: "", message: "Dados salvos com sucesso", preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
}
