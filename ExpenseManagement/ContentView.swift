//
//  ContentView.swift
//  ExpenseManagement
//
//  Created by Louis REY on 10/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            AccountCell(account: Account(nameIcon: "icon_001", name: "Boursorama", amount: 1400))
            AccountCell(account: Account(nameIcon: "icon_002", name: "Visa", amount: 890))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .padding()
            .background(Color("grey"))
            .previewLayout(.sizeThatFits)
    }
}
