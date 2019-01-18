//
//  Transactions.swift
//  BloodFunding
//
//  Created by Esmael Luiz Winter on 17/01/19.
//  Copyright © 2019 Diogo Augusto Pereira. All rights reserved.
//
import Foundation

final class Transactions {
    
    static var donationsAmount = NSDecimalNumber(integerLiteral: 0)
    static var contributuionsAmount = NSDecimalNumber(integerLiteral: 0)

    static var donationsCount: Int = 0
    
    private init() {
        
    }
    
    static func contribute(value: NSDecimalNumber) {
        contributuionsAmount = contributuionsAmount.adding(value)
        print(contributuionsAmount)
    }
    
    static func donate(value: NSDecimalNumber) {
        donationsAmount = donationsAmount.adding(value)
    }
    
    static func updateDonations(){
        donationsCount = donationsCount + 1
    }
    
    static func getAmoutToRecieve() -> NSDecimalNumber{
        return NSDecimalNumber(integerLiteral: 5)
    }
    
    static func recieve(){
       contributuionsAmount = contributuionsAmount.subtracting(contributuionsAmount.dividing(by: (NSDecimalNumber(integerLiteral: donationsCount))))
    }
    
    static func withdraw(){
        donationsAmount = 0
    }
    
    static func additionalContribution(){
        donationsAmount = donationsAmount.subtracting(getAmoutToRecieve())
        contributuionsAmount = contributuionsAmount.adding(getAmoutToRecieve())
    }
    
    static func formatValue(value: NSDecimalNumber) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .currency
        numberFormatter.currencySymbol = "R$ "
        return numberFormatter.string(from: value)!
    }
}
