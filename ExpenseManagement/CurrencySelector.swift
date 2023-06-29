//
//  CurrencySelector.swift
//  ExpenseManagement
//
//  Created by Louis REY on 29/06/2023.
//

import SwiftUI

struct CurrencySelector: View {
    
   
    /// listes des devises
    private let currencies = Currency.allCases
    /// la devise selectionné
    @State private var selectedCurrency: Currency = .euro
    /// mode sélectionné
    @State private var isSelectedMode = false
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CurrencySelector_Previews: PreviewProvider {
    static var previews: some View {
        CurrencySelector()
    }
}
