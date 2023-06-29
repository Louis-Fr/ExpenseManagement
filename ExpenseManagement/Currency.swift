//
//  Currency.swift
//  ExpenseManagement
//
//  Created by Louis REY on 29/06/2023.
//

import Foundation

enum Currency: String, CaseIterable {
    case dollar = "$"
    case euro = "€"
    case ruble = "₽"
    case sterling = "£"
    case yen = "¥"
    
    /// Computed property
    var iconName: String {
        switch self {
        case .dollar:
            return "dollarsign.circle"
        case .euro:
            return "eurosign.circle"
        case .ruble:
            return "rublesing.circle"
        case .sterling:
            return "sterlingsign.circle"
        case .yen:
            return "yensign.circle"
        }
    }
    
    /// Computed property
    var filledIconName: String {
        return "\(iconName).fill"
    }
}


