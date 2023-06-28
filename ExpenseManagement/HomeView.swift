//
//  ContentView.swift
//  ExpenseManagement
//
//  Created by Louis REY on 10/03/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        /// L'objet List modifie l'apparence des cellules (marges)
//        List(previewData) { account in
//            AccountCell(account: account)
//        }
        
        ScrollView {
            /// Empilement de plusieurs VStack pour gérer les spacing et alignement de manière indépendante
            VStack(spacing: 32) {
                VStack(spacing: 8) {
                    Text("Solde total :")
                    Text("\(String(format: "%.2F", previewData.map { $0.amount }.reduce(0, +)))€")
                        .font(.system(size: 32, weight: .bold))
                }
                VStack(alignment: .leading) {
                    Text("Mes comptes")
                        .font(.title2)
                        .bold()
                    if previewData.count > 0 {
                        VStack (spacing: 16) {
                            ForEach(previewData) { account in
                                AccountCell(account: account)
                            }
                        }
                    } else {
                        Text("Ajouter un compte")
                            .padding(32)
                            .frame(maxWidth: .infinity)
                        
                    } // fin vstack 3
                } // fin vstack 2
            } // fin vstack 1
            .padding(24)
            
        } // fin scrollview
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .background(Color("grey"))
    }
}
