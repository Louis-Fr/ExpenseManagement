//
//  AccountCell.swift
//  ExpenseManagement
//
//  Created by Louis REY on 19/06/2023.
//

import SwiftUI

/// Vue générique

struct AccountCell: View {
    
    let account: Account
    @State var isFavorite = false
    
    var body: some View {
        HStack {
            Image(account.nameIcon)
                .resizable()
                .padding(4)
                .frame(width: 50, height: 50)
            VStack(alignment: .leading, spacing: 4) {
                Text(account.name)
                    .font(.headline)
                    .foregroundColor(.primary)
                Text("Solde : \(String(format: "%.2F", account.amount)) €")
                    .font(.footnote)
                    .foregroundColor(Color(white: 0.4))
            }
            Spacer()
            Button {
                isFavorite.toggle()
            } label: {
                Image(systemName: isFavorite ? "star.fill" : "star")
                    .foregroundColor(isFavorite ? Color.yellow : Color(white: 0.4))
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(.white)
        .cornerRadius(16)
    }
}


struct AccountCell_Previews: PreviewProvider {
    
    static let previewAccount = Account(nameIcon: "icon_001", name: "Visa", amount: 150)
    
    
    static var previews: some View {
        VStack {
            AccountCell(account: previewAccount)
        }
        .padding()
        .background(Color("grey"))
        .previewLayout(.sizeThatFits)
    }
}
