//
//  UserProfile.swift
//  BloodFunding
//
//  Created by Ronaldo Radaieski Cunda on 17/01/19.
//  Copyright © 2019 Diogo Augusto Pereira. All rights reserved.
//

import Foundation

class UserProfile {

    var nome: String
    var sobrenome: String
    var cpf: String
    var dataNascimento: Date
    
    init(nome: String, sobrenome: String, cpf: String, data: Date) {
        
        self.nome = nome
        self.sobrenome = sobrenome
        self.cpf = cpf
        self.dataNascimento = data
    }
    
}
