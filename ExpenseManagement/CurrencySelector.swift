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
    @State private var isSelectedMode = true
    
    
    var body: some View {
        ZStack {
            ForEach(currencies.indices) { index in
                Image(systemName: selectedCurrency == currencies[index] ? currencies[index].filledIconName : currencies[index].iconName)
                    .font(.system(size: 32))
                    .offset(x: isSelectedMode ? -CGFloat(index) * 40 : 0)
                    .opacity(selectedCurrency == currencies[index] || isSelectedMode ? 1 : 0)
            }
        }
    }
}

struct CurrencySelector_Previews: PreviewProvider {
    static var previews: some View {
        CurrencySelector()
    }
}
