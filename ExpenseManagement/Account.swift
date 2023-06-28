//
//  Account.swift
//  ExpenseManagement
//
//  Created by Louis REY on 23/06/2023.
//

import Foundation

/// Objet Account qui encapsule 3 données

struct Account: Identifiable {
    let id = UUID()
    let nameIcon: String
    let name: String
    let amount: Float
    
}
